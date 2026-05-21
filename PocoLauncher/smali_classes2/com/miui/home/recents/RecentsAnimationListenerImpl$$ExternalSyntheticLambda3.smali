.class public final synthetic Lcom/miui/home/recents/RecentsAnimationListenerImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

.field public final synthetic f$1:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

.field public final synthetic f$2:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

.field public final synthetic f$3:Landroid/graphics/Rect;

.field public final synthetic f$4:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/RecentsAnimationListenerImpl;Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl$$ExternalSyntheticLambda3;->f$0:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    iput-object p2, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl$$ExternalSyntheticLambda3;->f$1:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

    iput-object p3, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl$$ExternalSyntheticLambda3;->f$2:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    iput-object p4, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl$$ExternalSyntheticLambda3;->f$3:Landroid/graphics/Rect;

    iput-object p5, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl$$ExternalSyntheticLambda3;->f$4:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl$$ExternalSyntheticLambda3;->f$0:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    iget-object v1, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl$$ExternalSyntheticLambda3;->f$1:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

    iget-object v2, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl$$ExternalSyntheticLambda3;->f$2:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    iget-object v3, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl$$ExternalSyntheticLambda3;->f$3:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl$$ExternalSyntheticLambda3;->f$4:Landroid/graphics/Rect;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->$r8$lambda$OJWLBScPIIj4SdK41_SH7Sr7Faw(Lcom/miui/home/recents/RecentsAnimationListenerImpl;Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method
