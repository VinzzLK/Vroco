.class final Lio/reactivex2/internal/operators/observable/ObservableScalarXMap$ScalarXMapObservable;
.super Lio/reactivex2/Observable;
.source "ObservableScalarXMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex2/internal/operators/observable/ObservableScalarXMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ScalarXMapObservable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex2/Observable<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final mapper:Lio/reactivex2/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex2/functions/Function<",
            "-TT;+",
            "Lio/reactivex2/ObservableSource<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Lio/reactivex2/functions/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lio/reactivex2/functions/Function<",
            "-TT;+",
            "Lio/reactivex2/ObservableSource<",
            "+TR;>;>;)V"
        }
    .end annotation

    .line 132
    invoke-direct {p0}, Lio/reactivex2/Observable;-><init>()V

    .line 133
    iput-object p1, p0, Lio/reactivex2/internal/operators/observable/ObservableScalarXMap$ScalarXMapObservable;->value:Ljava/lang/Object;

    .line 134
    iput-object p2, p0, Lio/reactivex2/internal/operators/observable/ObservableScalarXMap$ScalarXMapObservable;->mapper:Lio/reactivex2/functions/Function;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex2/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex2/Observer<",
            "-TR;>;)V"
        }
    .end annotation

    .line 142
    :try_start_0
    iget-object v0, p0, Lio/reactivex2/internal/operators/observable/ObservableScalarXMap$ScalarXMapObservable;->mapper:Lio/reactivex2/functions/Function;

    iget-object p0, p0, Lio/reactivex2/internal/operators/observable/ObservableScalarXMap$ScalarXMapObservable;->value:Ljava/lang/Object;

    invoke-interface {v0, p0}, Lio/reactivex2/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "The mapper returned a null ObservableSource"

    invoke-static {p0, v0}, Lio/reactivex2/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex2/ObservableSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 147
    instance-of v0, p0, Ljava/util/concurrent/Callable;

    if-eqz v0, :cond_1

    .line 151
    :try_start_1
    check-cast p0, Ljava/util/concurrent/Callable;

    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p0, :cond_0

    .line 159
    invoke-static {p1}, Lio/reactivex2/internal/disposables/EmptyDisposable;->complete(Lio/reactivex2/Observer;)V

    return-void

    .line 162
    :cond_0
    new-instance v0, Lio/reactivex2/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;

    invoke-direct {v0, p1, p0}, Lio/reactivex2/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;-><init>(Lio/reactivex2/Observer;Ljava/lang/Object;)V

    .line 163
    invoke-interface {p1, v0}, Lio/reactivex2/Observer;->onSubscribe(Lio/reactivex2/disposables/Disposable;)V

    .line 164
    invoke-virtual {v0}, Lio/reactivex2/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;->run()V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 153
    invoke-static {p0}, Lio/reactivex2/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 154
    invoke-static {p0, p1}, Lio/reactivex2/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex2/Observer;)V

    return-void

    .line 166
    :cond_1
    invoke-interface {p0, p1}, Lio/reactivex2/ObservableSource;->subscribe(Lio/reactivex2/Observer;)V

    :goto_0
    return-void

    :catchall_1
    move-exception p0

    .line 144
    invoke-static {p0, p1}, Lio/reactivex2/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex2/Observer;)V

    return-void
.end method
