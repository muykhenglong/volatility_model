# Advanced Volatility Models

This repository focuses on advanced volatility models used in financial modeling and option pricing. It features implementations of the Heston Stochastic Volatility Model and the Constant Elasticity of Variance (CEV) Model in MATLAB. These models are crucial for accurately capturing the dynamics of financial markets where volatility is not constant but varies with time and the price of the underlying asset.

## Models Included

### Heston Stochastic Volatility Model (`HestonVar.m`)
The Heston model is a widely used stochastic volatility model that describes the evolution of an asset’s variance. Unlike simpler models that assume constant volatility, the Heston model allows volatility to fluctuate according to a stochastic process, providing a more realistic framework for pricing derivatives, especially in markets known for volatility clustering and leverage effects.

### Constant Elasticity of Variance Model (`CEV.m`)
The CEV model incorporates a local volatility function where volatility depends on the asset's current price level. This model is particularly useful in scenarios where the volatility exhibits a known correlation with price levels, helping to address phenomena like the leverage effect, where volatility increases as prices fall.
