function paths = CEV(S,r,q,vol0,beta,T,N,NPaths)
@ `CEV` function simulates asset price paths using the Constant Elasticity of Variance model.
@ Take inputs:
@ - S: Initial stock price.
@ - r: Annual risk-free interest rate.
@ - q: Annual dividend yield.
@ - vol0: Initial volatility level.
@ - beta: Elasticity parameter, which determines how volatility changes with the asset price.
@ - T: Total time to maturity.
@ - N: Number of time steps.
@ - NPaths: Number of asset paths to simulate.

   paths = zeros(NPaths,N+1);
   paths(:,1) = S;
   dT = T/N;
   sigma = vol0 * S^((2-beta)/beta);

   for i = 1:NPaths
       for j = 1:N
           drift = (r - q - 0.5*sigma^2*paths(i,j)^(beta-2))*dT;
           risk = sigma*paths(i,j)^((beta-2)/2)*dT^0.5;
           paths(i,j+1) = paths(i,j) * exp(drift + risk*randn);
       end
   end

   for i = 1:NPaths
       plot(0:dT:T,paths(i,:));
       hold on
   end
   hold off;
 
end

