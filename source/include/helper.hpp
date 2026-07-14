#ifndef _HELPER_HPP
#define _HELPER_HPP

#define likely(x) __builtin_expect(!!(x), 1)
#define unlikely(x) __builtin_expect(!!(x), 0)
#define __malloc_like __attribute__((__malloc__))
#define __pure __attribute__((__pure__))
#define __const_func __attribute__((__const__))
#define __nonnull(pos) __attribute__((__nonnull__ pos))
#define __unused __attribute__((__unused__))
#define __deprecated __attribute__((__deprecated__))

#define __format(archetype, string_index, first_to_check) \
    __attribute__((__format__(archetype, string_index, first_to_check)))

#define __hidden __attribute__((__visibility__("hidden")))
#define __constructor __attribute__((__constructor__))
#define __section(s) __attribute__((__section__(s)))
#define __packed __attribute__((__packed__))
#define __aligned(x) __attribute__((__aligned__(x)))
#define __noreturn __attribute__((__noreturn__))
#define __must_check __attribute__((__warn_unused_result__))
#define __always_inline __attribute__((__always_inline__)) static inline
#define ALIGN_UP(addr, align) (((addr) + (align) - 1) & ~((align) - 1))
#define ALIGN_DOWN(addr, align) ((addr) & ~((align) - 1))
#define PAGE_ALIGN_UP(addr) ALIGN_UP(addr, PAGE_SIZE)
#define PAGE_ALIGN_DOWN(addr) ALIGN_DOWN(addr, PAGE_SIZE)

#define BIT(n) (1ULL << (n))
#define BIT_SET(var, n) ((var) |= (1ULL << (n)))
#define BIT_CLEAR(var, n) ((var) &= ~(1ULL << (n)))
#define BIT_TOGGLE(var, n) ((var) ^= (1ULL << (n)))
#define BIT_CHECK(var, n) (!!((var) & (1ULL << (n))))
#define BIT_MASK(start, end) (((1ULL << ((end) - (start) + 1)) - 1) << (start))
#define BIT_SET_FIELD(var, start, end, val) \
    ((var) = ((var) & ~BIT_MASK(start, end)) | (((val) << (start)) & BIT_MASK(start, end)))
#define BIT_GET_FIELD(var, start, end) \
    (((var) & BIT_MASK(start, end)) >> (start))

#define ARRAY_SIZE(arr) (sizeof(arr) / sizeof((arr)[0]))

#define container_of(ptr, type, member) ({                      \
    int __dummy = 0;                                            \
    const typeof( ((type *)0)->member ) *__mptr = (ptr);        \
    (type *)( (char *)__mptr - offsetof(type,member) ); })

#define STATIC_ASSERT(expr) _Static_assert(expr, "Verification error!")
#define CURRENT_FILE __FILE__
#define CURRENT_LINE __LINE__
#define CURRENT_FUNC __func__
#define __cleanup_with(func) __attribute__((__cleanup__(func)))
#define types_match(a, b) __builtin_types_compatible_p(__typeof__(a), __typeof__(b))
#define count_trailing_zeros(x) __builtin_ctzll(x)
#define count_leading_zeros(x) __builtin_clzll(x)
#define count_set_bits(x) __builtin_popcountll(x)
#define safe_add(res, a, b) __builtin_add_overflow(a, b, res)
#define safe_mul(res, a, b) __builtin_mul_overflow(a, b, res)
#define safe_sub(res, a, b) __builtin_sub_overflow(a, b, res)
#define bswap16(x) __builtin_bswap16(x)
#define bswap32(x) __builtin_bswap32(x)
#define bswap64(x) __builtin_bswap64(x)
#define bit_reverse8(x) __builtin_bitreverse8(x)
#define bit_reverse16(x) __builtin_bitreverse16(x)
#define bit_reverse32(x) __builtin_bitreverse32(x)
#define bit_reverse64(x) __builtin_bitreverse64(x)
#define find_first_set(x) __builtin_ffsll(x)
#define parity(x) __builtin_parityll(x)
#define prefetch_read(addr) __builtin_prefetch(addr, 0, 3)
#define prefetch_write(addr) __builtin_prefetch(addr, 1, 3)
#define is_constant(x) __builtin_constant_p(x)
#define unreachable() __builtin_unreachable()
#define assume_aligned(p, a) __builtin_assume_aligned(p, a)
#define current_frame_addr() __builtin_frame_address(0)
#define current_return_addr() __builtin_return_address(0)
#define extract_return_addr(a) __builtin_extract_return_addr(a)
#define builtin_memcpy(d, s, n) __builtin_memcpy(d, s, n)
#define builtin_memset(s, c, n) __builtin_memset(s, c, n)
#define builtin_memcmp(s1, s2, n) __builtin_memcmp(s1, s2, n)
#define builtin_strlen(s) __builtin_strlen(s)
#define builtin_abs(x) __builtin_abs(x)
#define builtin_labs(x) __builtin_labs(x)
#define builtin_llabs(x) __builtin_llabs(x)
#define atomic_test_and_set(ptr) __builtin_test_and_set(ptr, __ATOMIC_SEQ_CST)
#define atomic_clear(ptr)        __builtin_clear(ptr, __ATOMIC_SEQ_CST)
#define atomic_inc(ptr)          __builtin_fetch_and_add(ptr, 1, __ATOMIC_SEQ_CST)
#define atomic_dec(ptr)          __builtin_fetch_and_sub(ptr, 1, __ATOMIC_SEQ_CST)

#endif // _HELPER_HPP