# nih-chest-xrays

### Udacity - Machine Learning Nanodegree - Capstone Project: (Mar. 2018)

Transfer Learning enables a variety of computer vision projects without the need to train a Convolutional Neural Net (CNN) from scratch (important because the computing resources required to do so are often available to large institutions only). Today, most Transfer Learning projects rely on a few specific datasets (e.g., ImageNet) which have proven to be useful, but which are limited to specific domains. The goal of this Notebook is to explore the feasibility of creating pre-trained models which are domain specific, and to know whether this will significantly improve the accuracy. For example, the U.S.-based National Institute of Health (NIH) has released a dataset of labeled chest x-rays, and it should be possible to improve classification accuracy on this dataset and/or similar datasets by first creating a "baseline" set of pre-trained weights which could be applied to classification, detection, localization efforts which involve x-ray images. This is a Supervised Learning project.

#### Example Finding

![Alt text](/notebook/findings.png?raw=true "")

Based on the somewhat lackluster results of the Transfer Learning investigation, and inspired by Stanford ML Group's [CheXNet](https://stanfordmlgroup.github.io/projects/chexnet/), I also decided to train a DenseNet [1] network to perform binary classification on the same NIH chest x-ray dataset, albeit on a single category ("Pulmonary Fibrosis"). In this case, the binary classification is a one-vs-all (a.k.a. one-vs-rest) approach for the lung disease category: "Pulmonary Fibrosis"; samples from this single class are taken against a random sample of the other 14 categories (including "No Finding"). This approach seemed to have achieved near state of the art results, with an AUROC of far greater than 0.05 of previously published results [2]. Due to my surprise, I immediately gathered another distinct chest x-ray dataset (Indiana University - IU), which also included Pulmonary Fibrosis examples, and I tested that dataset. 

#### Results

![Alt text](/notebook/results.png?raw=true "")

I have made the weights publicly available, I have published my DenseNet implementation details as a public Kaggle Kernel, and I have also developed a Web Service (https://zdmc.info/pulmonary-fibrosis) to test individual samples from different datasets, and to experiment with Dynamically Expandable Networks (DENs) [3].

1. Huang, et. al. (2016). Densely Connected Convolutional Networks. https://arxiv.org/abs/1711.05225
1. Rajpukar, et. al. (2017). CheXNet: Radiologist-Level Pneumonia Detection on Chest X-Rays with Deep Learning, 4. https://arxiv.org/abs/1711.05225
1. Lee, et. al. (2017). Lifelong Learning with Dynamically Expandable Networks. https://arxiv.org/abs/1708.01547v2

#### Environment

- conda 4.3.30
- Python 3.6.3
- TensorFlow 1.4.1
- Keras 2.1.3
- bcolz 1.1.2
- Keras-viz 0.4.1
- numpy 1.13.3
- matplotlib 2.1.0
- PIL 1.1.6
- scipy 0.19.1
- GNU/Linux "convert" via ImageMagick 6.8.9-9
