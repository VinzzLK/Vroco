.class public final synthetic Lcom/miui/home/recents/anim/WindowElement$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/recents/anim/WindowElement;

.field public final synthetic f$1:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

.field public final synthetic f$2:Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

.field public final synthetic f$3:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/anim/WindowElement;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/anim/WindowElement$$ExternalSyntheticLambda11;->f$0:Lcom/miui/home/recents/anim/WindowElement;

    iput-object p2, p0, Lcom/miui/home/recents/anim/WindowElement$$ExternalSyntheticLambda11;->f$1:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    iput-object p3, p0, Lcom/miui/home/recents/anim/WindowElement$$ExternalSyntheticLambda11;->f$2:Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    iput-object p4, p0, Lcom/miui/home/recents/anim/WindowElement$$ExternalSyntheticLambda11;->f$3:Landroid/app/ActivityManager$RunningTaskInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement$$ExternalSyntheticLambda11;->f$0:Lcom/miui/home/recents/anim/WindowElement;

    iget-object v1, p0, Lcom/miui/home/recents/anim/WindowElement$$ExternalSyntheticLambda11;->f$1:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    iget-object v2, p0, Lcom/miui/home/recents/anim/WindowElement$$ExternalSyntheticLambda11;->f$2:Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement$$ExternalSyntheticLambda11;->f$3:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {v0, v1, v2, p0}, Lcom/miui/home/recents/anim/WindowElement;->$r8$lambda$UKwbMepaYIBsS46URj3kGOk2lKE(Lcom/miui/home/recents/anim/WindowElement;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method
