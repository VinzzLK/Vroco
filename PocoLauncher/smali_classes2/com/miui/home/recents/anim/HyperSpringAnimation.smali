.class public final Lcom/miui/home/recents/anim/HyperSpringAnimation;
.super Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;
.source "HyperSpringAnimation.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/anim/HyperSpringAnimation$OnUpdateListener;
    }
.end annotation


# instance fields
.field private final springBundles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/recents/anim/SpringBundle;",
            ">;"
        }
    .end annotation
.end field

.field private updateListener:Lcom/miui/home/recents/anim/HyperSpringAnimation$OnUpdateListener;

.field private final valueMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$eXCG5F6XJveXYJkL5fuZC5Jpji0(Lcom/miui/home/recents/anim/HyperSpringAnimation;Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/recents/anim/HyperSpringAnimation;->_init_$lambda-0(Lcom/miui/home/recents/anim/HyperSpringAnimation;Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/recents/anim/SpringBundle;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/anim/HyperSpringAnimation;->springBundles:Ljava/util/ArrayList;

    .line 16
    new-instance v0, Landroid/util/ArrayMap;

    .line 17
    iget v1, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->BUNDLE_NUM:I

    invoke-static {v1}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->capacity(I)I

    move-result v1

    .line 16
    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/miui/home/recents/anim/HyperSpringAnimation;->valueMap:Landroid/util/ArrayMap;

    if-eqz p1, :cond_0

    .line 26
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 27
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/anim/SpringBundle;

    .line 28
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->addSpringBundle(Lcom/miui/home/recents/anim/SpringBundle;)V

    goto :goto_0

    .line 31
    :cond_0
    new-instance p1, Lcom/miui/home/recents/anim/HyperSpringAnimation$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/anim/HyperSpringAnimation$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/recents/anim/HyperSpringAnimation;)V

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->addUpdateListener(Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$OnAnimationUpdateListener;)Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;

    return-void
.end method

.method private static final _init_$lambda-0(Lcom/miui/home/recents/anim/HyperSpringAnimation;Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->getSpringBundleMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 33
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.collections.Map.Entry<*, com.miui.home.recents.anim.SpringBundle>"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/anim/SpringBundle;

    if-eqz v0, :cond_0

    .line 36
    iget-object v1, p0, Lcom/miui/home/recents/anim/HyperSpringAnimation;->valueMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/SpringBundle;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/SpringBundle;->getValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 39
    :cond_1
    iget-object p1, p0, Lcom/miui/home/recents/anim/HyperSpringAnimation;->updateListener:Lcom/miui/home/recents/anim/HyperSpringAnimation$OnUpdateListener;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/miui/home/recents/anim/HyperSpringAnimation;->valueMap:Landroid/util/ArrayMap;

    invoke-interface {p1, p0}, Lcom/miui/home/recents/anim/HyperSpringAnimation$OnUpdateListener;->onAnimationUpdate(Landroid/util/ArrayMap;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getSpring(Ljava/lang/String;)Landroidx/dynamicanimation/animation/SpringForce;
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-super {p0, p1}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->getSpring(Ljava/lang/String;)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p0

    const-string p1, "super.getSpring(type)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final setDampingRation(Ljava/lang/String;F)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/HyperSpringAnimation;->getSpring(Ljava/lang/String;)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    return-void
.end method

.method public final setFinalPosition(Ljava/lang/String;F)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->getBundle(Ljava/lang/String;)Lcom/miui/home/recents/anim/SpringBundle;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/miui/home/recents/anim/SpringBundle;->setFinalPosition(F)Lcom/miui/home/recents/anim/SpringBundle;

    :goto_0
    return-void
.end method

.method public final setStartValue(Ljava/lang/String;F)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->getBundle(Ljava/lang/String;)Lcom/miui/home/recents/anim/SpringBundle;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lcom/miui/home/recents/anim/SpringBundle;->setStartValue(F)Lcom/miui/home/recents/anim/SpringBundle;

    :cond_0
    return-void
.end method

.method public final setStiffness(Ljava/lang/String;F)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->getBundle(Ljava/lang/String;)Lcom/miui/home/recents/anim/SpringBundle;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/miui/home/recents/anim/SpringBundle;->setStiffness(F)V

    :goto_0
    return-void
.end method

.method public final setUpdateListener(Lcom/miui/home/recents/anim/HyperSpringAnimation$OnUpdateListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lcom/miui/home/recents/anim/HyperSpringAnimation;->updateListener:Lcom/miui/home/recents/anim/HyperSpringAnimation$OnUpdateListener;

    return-void
.end method
