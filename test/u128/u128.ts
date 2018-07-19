import 'allocator/arena';
import { u128 } from '../../assembly/integer/u128';


export function plus(a : u32, b : u32) : usize {
    // return changetype<usize>(u128.fromI32(a) + u128.fromI32(b));
    return changetype<usize>(u128.from<u32>(a) + u128.from<u32>(b));
}