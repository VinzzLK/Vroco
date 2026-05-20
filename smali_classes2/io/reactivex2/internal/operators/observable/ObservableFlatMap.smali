.class public final Lio/reactivex2/internal/operators/observable/ObservableFlatMap;
.super Lio/reactivex2/internal/operators/observable/AbstractObservableWithUpstream;
.source "ObservableFlatMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex2/internal/operators/observable/ObservableFlatMap$InnerObserver;,
        Lio/reactivex2/internal/operators/observable/ObservableFlatMap$MergeObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex2/internal/operators/observable/AbstractObservableWithUpstream<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field final bufferSize:I

.field final delayErrors:Z

.field final mapper:Lio/reactivex2/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex2/functions/Function<",
            "-TT;+",
            "Lio/reactivex2/ObservableSource<",
            "+TU;>;>;"
        }
    .end annotation
.end field

.field final maxConcurrency:I


# direct methods
.method public constructor <init>(Lio/reactivex2/ObservableSource;Lio/reactivex2/functions/Function;ZII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex2/ObservableSource<",
            "TT;>;",
            "Lio/reactivex2/functions/Function<",
            "-TT;+",
            "Lio/reactivex2/ObservableSource<",
            "+TU;>;>;ZII)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1}, Lio/reactivex2/internal/operators/observable/AbstractObservableWithUpstream;-><init>(Lio/reactivex2/ObservableSource;)V

    .line 42
    iput-object p2, p0, Lio/reactivex2/internal/operators/observable/ObservableFlatMap;->mapper:Lio/reactivex2/functions/Function;

    .line 43
    iput-boolean p3, p0, Lio/reactivex2/internal/operators/observable/ObservableFlatMap;->delayErrors:Z

    .line 44
    iput p4, p0, Lio/reactivex2/internal/operators/observable/ObservableFlatMap;->maxConcurrency:I

    .line 45
    iput p5, p0, Lio/reactivex2/internal/operators/observable/ObservableFlatMap;->bufferSize:I

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex2/Observer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex2/Observer<",
            "-TU;>;)V"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lio/reactivex2/internal/operators/observable/AbstractObservableWithUpstream;->source:Lio/reactivex2/ObservableSource;

    iget-object v1, p0, Lio/reactivex2/internal/operators/observable/ObservableFlatMap;->mapper:Lio/reactivex2/functions/Function;

    invoke-static {v0, p1, v1}, Lio/reactivex2/internal/operators/observable/ObservableScalarXMap;->tryScalarXMapSubscribe(Lio/reactivex2/ObservableSource;Lio/reactivex2/Observer;Lio/reactivex2/functions/Function;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lio/reactivex2/internal/operators/observable/AbstractObservableWithUpstream;->source:Lio/reactivex2/ObservableSource;

    new-instance v7, Lio/reactivex2/internal/operators/observable/ObservableFlatMap$MergeObserver;

    iget-object v3, p0, Lio/reactivex2/internal/operators/observable/ObservableFlatMap;->mapper:Lio/reactivex2/functions/Function;

    iget-boolean v4, p0, Lio/reactivex2/internal/operators/observable/ObservableFlatMap;->delayErrors:Z

    iget v5, p0, Lio/reactivex2/internal/operators/observable/ObservableFlatMap;->maxConcurrency:I

    iget v6, p0, Lio/reactivex2/internal/operators/observable/ObservableFlatMap;->bufferSize:I

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex2/internal/operators/observable/ObservableFlatMap$MergeObserver;-><init>(Lio/reactivex2/Observer;Lio/reactivex2/functions/Function;ZII)V

    invoke-interface {v0, v7}, Lio/reactivex2/ObservableSource;->subscribe(Lio/reactivex2/Observer;)V

    return-void
.end method
