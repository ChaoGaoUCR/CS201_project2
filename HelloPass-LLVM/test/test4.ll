; ModuleID = 'test4.c'
source_filename = "test4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test4(i32 %a, i32 %b, i32 %c, i32 %d) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %d.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  store i32 %c, i32* %c.addr, align 4
  store i32 %d, i32* %d.addr, align 4
  %0 = load i32, i32* %b.addr, align 4
  %1 = load i32, i32* %c.addr, align 4
  %add = add nsw i32 %0, %1
  store i32 %add, i32* %a.addr, align 4
  %2 = load i32, i32* %a.addr, align 4
  %3 = load i32, i32* %d.addr, align 4
  %sub = sub nsw i32 %2, %3
  store i32 %sub, i32* %b.addr, align 4
  %4 = load i32, i32* %b.addr, align 4
  %5 = load i32, i32* %c.addr, align 4
  %add1 = add nsw i32 %4, %5
  store i32 %add1, i32* %c.addr, align 4
  %6 = load i32, i32* %a.addr, align 4
  %7 = load i32, i32* %d.addr, align 4
  %sub2 = sub nsw i32 %6, %7
  store i32 %sub2, i32* %d.addr, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"Ubuntu clang version 10.0.1-++20211003084855+ef32c611aa21-1~exp1~20211003085243.2"}
