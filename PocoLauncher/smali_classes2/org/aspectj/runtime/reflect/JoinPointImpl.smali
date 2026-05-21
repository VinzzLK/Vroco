.class Lorg/aspectj/runtime/reflect/JoinPointImpl;
.super Ljava/lang/Object;
.source "JoinPointImpl.java"

# interfaces
.implements Lorg/aspectj/lang/ProceedingJoinPoint;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/aspectj/runtime/reflect/JoinPointImpl$StaticPartImpl;
    }
.end annotation


# instance fields
.field _this:Ljava/lang/Object;

.field private arc:Lorg/aspectj/runtime/internal/AroundClosure;

.field private arcs:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lorg/aspectj/runtime/internal/AroundClosure;",
            ">;"
        }
    .end annotation
.end field

.field args:[Ljava/lang/Object;

.field staticPart:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field target:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 142
    iput-object v0, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->arc:Lorg/aspectj/runtime/internal/AroundClosure;

    .line 143
    iput-object v0, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->arcs:Ljava/util/Stack;

    .line 88
    iput-object p1, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->staticPart:Lorg/aspectj/lang/JoinPoint$StaticPart;

    .line 89
    iput-object p2, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->_this:Ljava/lang/Object;

    .line 90
    iput-object p3, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->target:Ljava/lang/Object;

    .line 91
    iput-object p4, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->args:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getArgs()[Ljava/lang/Object;
    .locals 3

    .line 103
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->args:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    .line 104
    iput-object v0, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->args:[Ljava/lang/Object;

    .line 106
    :cond_0
    iget-object p0, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->args:[Ljava/lang/Object;

    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Object;

    .line 107
    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public getThis()Ljava/lang/Object;
    .locals 0

    .line 95
    iget-object p0, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->_this:Ljava/lang/Object;

    return-object p0
.end method

.method public proceed()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->arcs:Ljava/util/Stack;

    if-nez v0, :cond_1

    .line 164
    iget-object p0, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->arc:Lorg/aspectj/runtime/internal/AroundClosure;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 167
    :cond_0
    invoke-virtual {p0}, Lorg/aspectj/runtime/internal/AroundClosure;->getState()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 170
    :cond_1
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/aspectj/runtime/internal/AroundClosure;

    iget-object p0, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->arcs:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/aspectj/runtime/internal/AroundClosure;

    invoke-virtual {p0}, Lorg/aspectj/runtime/internal/AroundClosure;->getState()[Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public set$AroundClosure(Lorg/aspectj/runtime/internal/AroundClosure;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->arc:Lorg/aspectj/runtime/internal/AroundClosure;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 128
    iget-object p0, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->staticPart:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-interface {p0}, Lorg/aspectj/lang/JoinPoint$StaticPart;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
