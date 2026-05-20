.class public final synthetic Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat$$ExternalSyntheticLambda1;->f$0:Z

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat$$ExternalSyntheticLambda1;->f$0:Z

    check-cast p1, Landroid/window/TransitionInfo$Change;

    invoke-static {p0, p1}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->$r8$lambda$q7rUMlyrd1QMBdcU6N_g74LGEPQ(ZLandroid/window/TransitionInfo$Change;)Z

    move-result p0

    return p0
.end method
