.class public final Lcom/miui/home/recents/gesture/NavStubGestureListener;
.super Landroid/view/MiuiGestureDetector$SimpleOnGestureListener;
.source "NavStubGestureListener.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/gesture/NavStubGestureListener$GestureType;,
        Lcom/miui/home/recents/gesture/NavStubGestureListener$GestureEventListener;,
        Lcom/miui/home/recents/gesture/NavStubGestureListener$WhenMappings;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final gestureListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/recents/gesture/NavStubGestureListener$GestureEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private hotAreaRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Landroid/view/MiuiGestureDetector$SimpleOnGestureListener;-><init>()V

    const-string v0, "NavStubGestureListener"

    .line 10
    iput-object v0, p0, Lcom/miui/home/recents/gesture/NavStubGestureListener;->TAG:Ljava/lang/String;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/gesture/NavStubGestureListener;->gestureListeners:Ljava/util/ArrayList;

    return-void
.end method

.method private final isInHotArea(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 46
    iget-object p0, p0, Lcom/miui/home/recents/gesture/NavStubGestureListener;->hotAreaRect:Landroid/graphics/Rect;

    if-eqz p0, :cond_0

    .line 47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final triggerGestureListener(Landroid/view/MotionEvent;Lcom/miui/home/recents/gesture/NavStubGestureListener$GestureType;)V
    .locals 2

    .line 35
    invoke-direct {p0, p1}, Lcom/miui/home/recents/gesture/NavStubGestureListener;->isInHotArea(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 36
    iget-object p0, p0, Lcom/miui/home/recents/gesture/NavStubGestureListener;->gestureListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/recents/gesture/NavStubGestureListener$GestureEventListener;

    .line 37
    sget-object v0, Lcom/miui/home/recents/gesture/NavStubGestureListener$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    invoke-interface {p1}, Lcom/miui/home/recents/gesture/NavStubGestureListener$GestureEventListener;->onLongPress()V

    goto :goto_0

    .line 38
    :cond_1
    invoke-interface {p1}, Lcom/miui/home/recents/gesture/NavStubGestureListener$GestureEventListener;->onDoubleTap()V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final addListener(Lcom/miui/home/recents/gesture/NavStubGestureListener$GestureEventListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object p0, p0, Lcom/miui/home/recents/gesture/NavStubGestureListener;->gestureListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final getHotAreaRect()Landroid/graphics/Rect;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/miui/home/recents/gesture/NavStubGestureListener;->hotAreaRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/miui/home/recents/gesture/NavStubGestureListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDoubleTap at ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    sget-object v0, Lcom/miui/home/recents/gesture/NavStubGestureListener$GestureType;->DOUBLE_TAP:Lcom/miui/home/recents/gesture/NavStubGestureListener$GestureType;

    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/gesture/NavStubGestureListener;->triggerGestureListener(Landroid/view/MotionEvent;Lcom/miui/home/recents/gesture/NavStubGestureListener$GestureType;)V

    .line 25
    invoke-super {p0, p1}, Landroid/view/MiuiGestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onGestureLineVisibilityChanged(Z)V
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/miui/home/recents/gesture/NavStubGestureListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGestureLineVisibilityChanged, isVisible:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object p0, p0, Lcom/miui/home/recents/gesture/NavStubGestureListener;->gestureListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/gesture/NavStubGestureListener$GestureEventListener;

    .line 55
    invoke-interface {v0, p1}, Lcom/miui/home/recents/gesture/NavStubGestureListener$GestureEventListener;->onGestureLineVisibilityChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/miui/home/recents/gesture/NavStubGestureListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLongPress at ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    sget-object v0, Lcom/miui/home/recents/gesture/NavStubGestureListener$GestureType;->LONG_PRESS:Lcom/miui/home/recents/gesture/NavStubGestureListener$GestureType;

    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/gesture/NavStubGestureListener;->triggerGestureListener(Landroid/view/MotionEvent;Lcom/miui/home/recents/gesture/NavStubGestureListener$GestureType;)V

    .line 31
    invoke-super {p0, p1}, Landroid/view/MiuiGestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public final onSystemUiFlagsChanged(I)V
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/miui/home/recents/gesture/NavStubGestureListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSystemUiFlagsChanged, newFlag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object p0, p0, Lcom/miui/home/recents/gesture/NavStubGestureListener;->gestureListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/gesture/NavStubGestureListener$GestureEventListener;

    .line 62
    invoke-interface {v0, p1}, Lcom/miui/home/recents/gesture/NavStubGestureListener$GestureEventListener;->onSystemUiFlagsChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setHotAreaRect(Landroid/graphics/Rect;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/miui/home/recents/gesture/NavStubGestureListener;->hotAreaRect:Landroid/graphics/Rect;

    return-void
.end method
