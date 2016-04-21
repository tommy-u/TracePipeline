require 'nn';
--The net.
mlp = torch.load("the_mlp_net");
processPath = "../process/";
--The datasets.
trainTable = torch.load( processPath.."outputTrainTable" );

function trainTable:size() return #trainTable end


--This is the loss function, MSE.
criterion = nn.ClassNLLCriterion();
--This is the training technique, SGD.
trainer = nn.StochasticGradient(mlp, criterion);
--Default learning rate is 0.01
--trainer.learningRate = 0.01
--trainer.maxIteration = 100

--Train, does 25 rounds by default
print("about to start training");
print("using net");
print(mlp);
trainer:train(trainTable);

