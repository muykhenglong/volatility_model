function paths = HestonVar(Variance,kapa,theta,volvar0,T,N,NPaths)

   paths = zeros(NPaths,N+1);
   paths(:,1) = Variance;
   dT = T/N;
   sigma = volvar0 * sqrt(Variance);

   for i = 1:NPaths
       for j = 1:N
           drift = (kapa*(theta-paths(i,j))-0.5*sigma^2)*dT/paths(i,j);
           risk = sigma / sqrt(paths(i,j)) * sqrt(dT);
           paths(i,j+1) = paths(i,j) * exp(drift + risk*randn);
       end
   end

   for i = 1:NPaths
       plot(0:dT:T,paths(i,:));
       hold on
   end
   hold off;
 
end
