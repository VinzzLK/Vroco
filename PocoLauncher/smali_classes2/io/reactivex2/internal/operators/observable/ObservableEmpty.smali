.class public final Lio/reactivex2/internal/operators/observable/ObservableEmpty;
.super Lio/reactivex2/Observable;
.source "ObservableEmpty.java"

# interfaces
.implements Lio/reactivex2/internal/fuseable/ScalarCallable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex2/Observable<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/reactivex2/internal/fuseable/ScalarCallable<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lio/reactivex2/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex2/Observable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lio/reactivex2/internal/operators/observable/ObservableEmpty;

    invoke-direct {v0}, Lio/reactivex2/internal/operators/observable/ObservableEmpty;-><init>()V

    sput-object v0, Lio/reactivex2/internal/operators/observable/ObservableEmpty;->INSTANCE:Lio/reactivex2/Observable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lio/reactivex2/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected subscribeActual(Lio/reactivex2/Observer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex2/Observer<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-static {p1}, Lio/reactivex2/internal/disposables/EmptyDisposable;->complete(Lio/reactivex2/Observer;)V

    return-void
.end method
