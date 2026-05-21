.class public final Lcom/miui/home/recents/anim/CloseToRecentWindowElementOffsetHelper;
.super Lcom/miui/home/recents/anim/WindowElementOffsetHelper;
.source "CloseToRecentWindowElementOffsetHelper.kt"


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;-><init>()V

    if-eqz p1, :cond_1

    .line 10
    instance-of v0, p1, Lcom/miui/home/recents/views/TaskStackView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;->setMAncestorRef(Ljava/lang/ref/WeakReference;)V

    const/4 v0, 0x1

    .line 15
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;->setMType(I)V

    .line 16
    check-cast p1, Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackView;->getScrollValueX()F

    move-result v0

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackView;->getScrollValueY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;->initPos(FF)V

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 11
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;->setMType(I)V

    return-void
.end method


# virtual methods
.method public calculatePosRelativeToAncestor()V
    .locals 4

    .line 20
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;->getMAncestorRef()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;->getMPosRelativeToAncestor()[F

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "null cannot be cast to non-null type com.miui.home.recents.views.TaskStackView"

    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getScrollValueX()F

    move-result v3

    aput v3, v1, v2

    .line 23
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElementOffsetHelper;->getMPosRelativeToAncestor()[F

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getScrollValueY()F

    move-result v0

    aput v0, p0, v1

    return-void
.end method
