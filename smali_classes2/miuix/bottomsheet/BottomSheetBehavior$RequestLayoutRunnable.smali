.class Lmiuix/bottomsheet/BottomSheetBehavior$RequestLayoutRunnable;
.super Ljava/lang/Object;
.source "BottomSheetBehavior.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/bottomsheet/BottomSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestLayoutRunnable"
.end annotation


# instance fields
.field public mInsetTop:I

.field public mInsetTopInMeasuredStep:I

.field private final mViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 2439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2440
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior$RequestLayoutRunnable;->mViewRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2445
    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior$RequestLayoutRunnable;->mInsetTop:I

    iget v1, p0, Lmiuix/bottomsheet/BottomSheetBehavior$RequestLayoutRunnable;->mInsetTopInMeasuredStep:I

    if-eq v0, v1, :cond_0

    .line 2446
    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior$RequestLayoutRunnable;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    .line 2447
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method
