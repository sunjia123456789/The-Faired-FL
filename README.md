Based on the PFLib-master, this code for federated learning has been modified for fairness.

Compared to the original PFLib, our federated learning on this GitHub has been optimized for the traditional random selection of clients. In contrast to traditional schemes, we adopt the Lyapunov approach to address the fairness issue in client selection. It avoids the classic problem of excessive global rounds in federated learning due to random client selection. Modifications have been made to PFLib-master's serveravg and serverbase to change their client selection methods. (Since this document only involves modifications to the FedAvg file after introducing fairness, only it has been modified, other federated learning modes have not been changed).

The usage of this code is as follows: First, enter the values for beta and i in the OptimalSelectionAlgorithm.m file. (Beta is a fairness indicator, chosen between 0-1, and according to the prove of this paper, a reasonable beta should be less than 1/2).

Here, you can obtain the K value applied to Faired Matlab and continue to experiment with this K value, resulting in a "client_selection.csv".

Next, please manually change the CSV file path at line 30 in "system/flcore/servers/serveravg" to run normally.

The random number seed and model parameters have been adjusted to the PFLib default situation. The modifications made to the model this time are mainly to introduce an additional correction to the client path, instead of completing the experiment with a random client path.
