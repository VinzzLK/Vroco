.class public final Lcom/miui/home/recents/event/RecentTransitionInfo;
.super Lcom/miui/home/recents/event/EventInfo;
.source "TransitionReceivedEvent.kt"


# instance fields
.field private final controller:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

.field private final recentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

.field private final targetSet:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;


# direct methods
.method public constructor <init>(Lcom/miui/home/recents/RecentsAnimationListenerImpl;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;)V
    .locals 1

    const-string v0, "recentsAnimationListenerImpl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetSet"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controller"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0}, Lcom/miui/home/recents/event/EventInfo;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/miui/home/recents/event/RecentTransitionInfo;->recentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    .line 58
    iput-object p2, p0, Lcom/miui/home/recents/event/RecentTransitionInfo;->targetSet:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    .line 59
    iput-object p3, p0, Lcom/miui/home/recents/event/RecentTransitionInfo;->controller:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/miui/home/recents/event/RecentTransitionInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/miui/home/recents/event/RecentTransitionInfo;

    iget-object v1, p0, Lcom/miui/home/recents/event/RecentTransitionInfo;->recentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    iget-object v3, p1, Lcom/miui/home/recents/event/RecentTransitionInfo;->recentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/miui/home/recents/event/RecentTransitionInfo;->targetSet:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    iget-object v3, p1, Lcom/miui/home/recents/event/RecentTransitionInfo;->targetSet:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/miui/home/recents/event/RecentTransitionInfo;->controller:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

    iget-object p1, p1, Lcom/miui/home/recents/event/RecentTransitionInfo;->controller:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getController()Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/miui/home/recents/event/RecentTransitionInfo;->controller:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

    return-object p0
.end method

.method public final getRecentsAnimationListenerImpl()Lcom/miui/home/recents/RecentsAnimationListenerImpl;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/miui/home/recents/event/RecentTransitionInfo;->recentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    return-object p0
.end method

.method public final getTargetSet()Lcom/miui/home/recents/util/RemoteAnimationTargetSet;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/miui/home/recents/event/RecentTransitionInfo;->targetSet:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/event/RecentTransitionInfo;->recentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/miui/home/recents/event/RecentTransitionInfo;->targetSet:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/miui/home/recents/event/RecentTransitionInfo;->controller:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecentTransitionInfo(recentsAnimationListenerImpl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/event/RecentTransitionInfo;->recentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", targetSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/event/RecentTransitionInfo;->targetSet:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", controller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/recents/event/RecentTransitionInfo;->controller:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
