module internal

import math
import vtl

pub fn mse_backward<T>(gradient &vtl.Tensor<T>, cache &vtl.Tensor<T>, target &vtl.Tensor<T>) []&vtl.Tensor<T> {
	dup := vtl.add<T>(gradient, gradient)
	norm := vtl.divide_scalar(dup, T(gradient.size))
	subs := vtl.substract(cache, target)
	return [vtl.multiply(norm, subs)]
}

pub fn sigmoid_cross_entropy_backward<T>(gradient &vtl.Tensor<T>, cache &vtl.Tensor<T>, target &vtl.Tensor<T>) []&vtl.Tensor<T> {
	batch_size := cache.shape[0]
	mut iter, shape := gradient.iterators<T>([cache, target])
	mut ret := vtl.new_tensor_like_with_shape<T>(cache, shape)
	for {
		vals, i := vtl.iterators_next<T>(mut iter) or { break }
		val := vals[0] * (T(1) / T(1) + T(math.exp(-f64(vals[1]))) - vals[1]) / T(batch_size)
		ret.set(i, val)
	}
	return [ret]
}

pub fn softmax_cross_entropy_backward<T>(gradient &vtl.Tensor<T>, cache &vtl.Tensor<T>, target &vtl.Tensor<T>) []&vtl.Tensor<T> {
	// batch_size := cache.shape[0]
	mut ret := vtl.new_tensor_like<T>(cache)
	// @todo: implement softmax_cross_entropy_backward
	return [ret]
}
