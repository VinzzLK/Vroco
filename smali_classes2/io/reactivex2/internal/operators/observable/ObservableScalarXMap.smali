.class public final Lio/reactivex2/internal/operators/observable/ObservableScalarXMap;
.super Ljava/lang/Object;
.source "ObservableScalarXMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex2/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;,
        Lio/reactivex2/internal/operators/observable/ObservableScalarXMap$ScalarXMapObservable;
    }
.end annotation


# direct methods
.method public static scalarXMap(Ljava/lang/Object;Lio/reactivex2/functions/Function;)Lio/reactivex2/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lio/reactivex2/functions/Function<",
            "-TT;+",
            "Lio/reactivex2/ObservableSource<",
            "+TU;>;>;)",
            "Lio/reactivex2/Observable<",
            "TU;>;"
        }
    .end annotation

    .line 116
    new-instance v0, Lio/reactivex2/internal/operators/observable/ObservableScalarXMap$ScalarXMapObservable;

    invoke-direct {v0, p0, p1}, Lio/reactivex2/internal/operators/observable/ObservableScalarXMap$ScalarXMapObservable;-><init>(Ljava/lang/Object;Lio/reactivex2/functions/Function;)V

    invoke-static {v0}, Lio/reactivex2/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex2/Observable;)Lio/reactivex2/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static tryScalarXMapSubscribe(Lio/reactivex2/ObservableSource;Lio/reactivex2/Observer;Lio/reactivex2/functions/Function;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex2/ObservableSource<",
            "TT;>;",
            "Lio/reactivex2/Observer<",
            "-TR;>;",
            "Lio/reactivex2/functions/Function<",
            "-TT;+",
            "Lio/reactivex2/ObservableSource<",
            "+TR;>;>;)Z"
        }
    .end annotation

    .line 51
    instance-of v0, p0, Ljava/util/concurrent/Callable;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 55
    :try_start_0
    check-cast p0, Ljava/util/concurrent/Callable;

    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez p0, :cond_0

    .line 63
    invoke-static {p1}, Lio/reactivex2/internal/disposables/EmptyDisposable;->complete(Lio/reactivex2/Observer;)V

    return v0

    .line 70
    :cond_0
    :try_start_1
    invoke-interface {p2, p0}, Lio/reactivex2/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "The mapper returned a null ObservableSource"

    invoke-static {p0, p2}, Lio/reactivex2/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex2/ObservableSource;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 77
    instance-of p2, p0, Ljava/util/concurrent/Callable;

    if-eqz p2, :cond_2

    .line 81
    :try_start_2
    check-cast p0, Ljava/util/concurrent/Callable;

    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p0, :cond_1

    .line 89
    invoke-static {p1}, Lio/reactivex2/internal/disposables/EmptyDisposable;->complete(Lio/reactivex2/Observer;)V

    return v0

    .line 92
    :cond_1
    new-instance p2, Lio/reactivex2/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;

    invoke-direct {p2, p1, p0}, Lio/reactivex2/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;-><init>(Lio/reactivex2/Observer;Ljava/lang/Object;)V

    .line 93
    invoke-interface {p1, p2}, Lio/reactivex2/Observer;->onSubscribe(Lio/reactivex2/disposables/Disposable;)V

    .line 94
    invoke-virtual {p2}, Lio/reactivex2/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;->run()V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 83
    invoke-static {p0}, Lio/reactivex2/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 84
    invoke-static {p0, p1}, Lio/reactivex2/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex2/Observer;)V

    return v0

    .line 96
    :cond_2
    invoke-interface {p0, p1}, Lio/reactivex2/ObservableSource;->subscribe(Lio/reactivex2/Observer;)V

    :goto_0
    return v0

    :catchall_1
    move-exception p0

    .line 72
    invoke-static {p0}, Lio/reactivex2/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 73
    invoke-static {p0, p1}, Lio/reactivex2/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex2/Observer;)V

    return v0

    :catchall_2
    move-exception p0

    .line 57
    invoke-static {p0}, Lio/reactivex2/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 58
    invoke-static {p0, p1}, Lio/reactivex2/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex2/Observer;)V

    return v0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method
