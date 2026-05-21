.class public final synthetic Lcom/miui/home/recents/anim/WindowElement$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Lcom/miui/home/recents/anim/WindowElement;

.field public final synthetic f$2:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

.field public final synthetic f$3:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

.field public final synthetic f$4:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;


# direct methods
.method public synthetic constructor <init>(ZLcom/miui/home/recents/anim/WindowElement;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/miui/home/recents/anim/WindowElement$$ExternalSyntheticLambda13;->f$0:Z

    iput-object p2, p0, Lcom/miui/home/recents/anim/WindowElement$$ExternalSyntheticLambda13;->f$1:Lcom/miui/home/recents/anim/WindowElement;

    iput-object p3, p0, Lcom/miui/home/recents/anim/WindowElement$$ExternalSyntheticLambda13;->f$2:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    iput-object p4, p0, Lcom/miui/home/recents/anim/WindowElement$$ExternalSyntheticLambda13;->f$3:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    iput-object p5, p0, Lcom/miui/home/recents/anim/WindowElement$$ExternalSyntheticLambda13;->f$4:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-boolean v0, p0, Lcom/miui/home/recents/anim/WindowElement$$ExternalSyntheticLambda13;->f$0:Z

    iget-object v1, p0, Lcom/miui/home/recents/anim/WindowElement$$ExternalSyntheticLambda13;->f$1:Lcom/miui/home/recents/anim/WindowElement;

    iget-object v2, p0, Lcom/miui/home/recents/anim/WindowElement$$ExternalSyntheticLambda13;->f$2:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    iget-object v3, p0, Lcom/miui/home/recents/anim/WindowElement$$ExternalSyntheticLambda13;->f$3:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement$$ExternalSyntheticLambda13;->f$4:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/miui/home/recents/anim/WindowElement;->$r8$lambda$sVy5zMRagG5dsyvmMfWdEKLcB8U(ZLcom/miui/home/recents/anim/WindowElement;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    return-void
.end method
