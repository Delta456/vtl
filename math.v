module vtl

import math

// abs returns the elementwise abs of an tensor
[inline]
pub fn tensor_abs(t Tensor) Tensor {
	return t.map(fn (x Num, _ int) Num {
		val := num_as_type<f64>(x)
		ret := math.abs(val)
		return Num(ret)
	})
}

// acos returns the elementwise acos of an tensor
[inline]
pub fn tensor_acos(t Tensor) Tensor {
	return t.map(fn (x Num, _ int) Num {
		val := num_as_type<f64>(x)
		ret := math.acos(val)
		return Num(ret)
	})
}

// asin returns the elementwise asin of an tensor
[inline]
pub fn tensor_asin(t Tensor) Tensor {
	return t.map(fn (x Num, _ int) Num {
		val := num_as_type<f64>(x)
		ret := math.asin(val)
		return Num(ret)
	})
}

// atan returns the elementwise atan of an tensor
[inline]
pub fn tensor_atan(t Tensor) Tensor {
	return t.map(fn (x Num, _ int) Num {
		val := num_as_type<f64>(x)
		ret := math.atan(val)
		return Num(ret)
	})
}

// atan2 returns the atan2 elementwise of two tensors
[inline]
pub fn tensor_atan2(a Tensor, b Tensor) Tensor {
	f := fn (xs []Num, _ int) Num {
		x := num_as_type<f64>(xs[0])
		y := num_as_type<f64>(xs[1])
		ret := math.atan2(x, y)
		return Num(ret)
	}
	return a.nmap(f, b)
}

// cbrt returns the elementwise cbrt of an tensor
[inline]
pub fn tensor_cbrt(t Tensor) Tensor {
	return t.map(fn (x Num, _ int) Num {
		val := num_as_type<f64>(x)
		ret := math.cbrt(val)
		return Num(ret)
	})
}

// ceil returns the elementwise ceil of an tensor
[inline]
pub fn tensor_ceil(t Tensor) Tensor {
	return t.map(fn (x Num, _ int) Num {
		val := num_as_type<f64>(x)
		ret := math.ceil(val)
		return Num(ret)
	})
}

// cos returns the elementwise cos of an tensor
[inline]
pub fn tensor_cos(t Tensor) Tensor {
	return t.map(fn (x Num, _ int) Num {
		val := num_as_type<f64>(x)
		ret := math.cos(val)
		return Num(ret)
	})
}

// exp returns the elementwise exp of an tensor
[inline]
pub fn tensor_exp(t Tensor) Tensor {
	return t.map(fn (x Num, _ int) Num {
		val := num_as_type<f64>(x)
		ret := math.exp(val)
		return Num(ret)
	})
}

// erf returns the elementwise erf of an tensor
[inline]
pub fn tensor_erf(t Tensor) Tensor {
	return t.map(fn (x Num, _ int) Num {
		val := num_as_type<f64>(x)
		ret := math.erf(val)
		return Num(ret)
	})
}

// exp2 returns the elementwise exp2 of an tensor
[inline]
pub fn tensor_exp2(t Tensor) Tensor {
	return t.map(fn (x Num, _ int) Num {
		val := num_as_type<f64>(x)
		ret := math.exp2(val)
		return Num(ret)
	})
}

// floor returns the elementwise floor of an tensor
[inline]
pub fn tensor_floor(t Tensor) Tensor {
	return t.map(fn (x Num, _ int) Num {
		val := num_as_type<f64>(x)
		ret := math.floor(val)
		return Num(ret)
	})
}

// fmod returns the fmod elementwise of two tensors
[inline]
pub fn tensor_fmod(a Tensor, b Tensor) Tensor {
	f := fn (xs []Num, _ int) Num {
		x := num_as_type<f64>(xs[0])
		y := num_as_type<f64>(xs[1])
		ret := math.fmod(x, y)
		return Num(ret)
	}
	return a.nmap(f, b)
}

// gamma returns the elementwise gamma of an tensor
[inline]
pub fn tensor_gamma(t Tensor) Tensor {
	return t.map(fn (x Num, _ int) Num {
		val := num_as_type<f64>(x)
		ret := math.gamma(val)
		return Num(ret)
	})
}

// hypot returns the hypot elementwise of two tensors
[inline]
pub fn tensor_hypot(a Tensor, b Tensor) Tensor {
	f := fn (xs []Num, _ int) Num {
		x := num_as_type<f64>(xs[0])
		y := num_as_type<f64>(xs[1])
		ret := math.hypot(x, y)
		return Num(ret)
	}
	return a.nmap(f, b)
}

// log10 returns the elementwise log10 of an tensor
[inline]
pub fn tensor_log10(t Tensor) Tensor {
	return t.map(fn (x Num, _ int) Num {
		val := num_as_type<f64>(x)
		ret := math.log10(val)
		return Num(ret)
	})
}

// log_gamma returns the elementwise log_gamma of an tensor
[inline]
pub fn tensor_log_gamma(t Tensor) Tensor {
	return t.map(fn (x Num, _ int) Num {
		val := num_as_type<f64>(x)
		ret := math.log_gamma(val)
		return Num(ret)
	})
}

// log_n returns the log_n elementwise of two tensors
[inline]
pub fn tensor_log_n(a Tensor, b Tensor) Tensor {
	f := fn (xs []Num, _ int) Num {
		x := num_as_type<f64>(xs[0])
		y := num_as_type<f64>(xs[1])
		ret := math.log_n(x, y)
		return Num(ret)
	}
	return a.nmap(f, b)
}

// max returns the max elementwise of two tensors
[inline]
pub fn tensor_max(a Tensor, b Tensor) Tensor {
	f := fn (xs []Num, _ int) Num {
		x := num_as_type<f64>(xs[0])
		y := num_as_type<f64>(xs[1])
		ret := math.max(x, y)
		return Num(ret)
	}
	return a.nmap(f, b)
}

// min returns the min elementwise of two tensors
[inline]
pub fn tensor_min(a Tensor, b Tensor) Tensor {
	f := fn (xs []Num, _ int) Num {
		x := num_as_type<f64>(xs[0])
		y := num_as_type<f64>(xs[1])
		ret := math.min(x, y)
		return Num(ret)
	}
	return a.nmap(f, b)
}

// pow returns the pow elementwise of two tensors
[inline]
pub fn tensor_pow(a Tensor, b Tensor) Tensor {
	f := fn (xs []Num, _ int) Num {
		x := num_as_type<f64>(xs[0])
		y := num_as_type<f64>(xs[1])
		ret := math.pow(x, y)
		return Num(ret)
	}
	return a.nmap(f, b)
}

// radians returns the elementwise deg2rad of an tensor
[inline]
pub fn tensor_radians(t Tensor) Tensor {
	return t.map(fn (x Num, _ int) Num {
		val := num_as_type<f64>(x)
		ret := math.radians(val)
		return Num(ret)
	})
}

// round rounds elements of an tensor elementwise
[inline]
pub fn tensor_round(t Tensor) Tensor {
	return t.map(fn (x Num, _ int) Num {
		val := num_as_type<f64>(x)
		ret := math.round(val)
		return Num(ret)
	})
}

// sin returns the elementwise sin of an tensor
[inline]
pub fn tensor_sin(t Tensor) Tensor {
	return t.map(fn (x Num, _ int) Num {
		val := num_as_type<f64>(x)
		ret := math.sin(val)
		return Num(ret)
	})
}

// sinh returns the elementwise sinh of an tensor
[inline]
pub fn tensor_sinh(t Tensor) Tensor {
	return t.map(fn (x Num, _ int) Num {
		val := num_as_type<f64>(x)
		ret := math.sinh(val)
		return Num(ret)
	})
}

// sqrt returns the elementwise square root of an tensor
[inline]
pub fn tensor_sqrt(t Tensor) Tensor {
	return t.map(fn (x Num, _ int) Num {
		val := num_as_type<f64>(x)
		ret := math.sqrt(val)
		return Num(ret)
	})
}

// tan returns the elementwise tan of an tensor
[inline]
pub fn tensor_tan(t Tensor) Tensor {
	return t.map(fn (x Num, _ int) Num {
		val := num_as_type<f64>(x)
		ret := math.tan(val)
		return Num(ret)
	})
}

// tanh returns the elementwise tanh of an tensor
[inline]
pub fn tensor_tanh(t Tensor) Tensor {
	return t.map(fn (x Num, _ int) Num {
		val := num_as_type<f64>(x)
		ret := math.tanh(val)
		return Num(ret)
	})
}
