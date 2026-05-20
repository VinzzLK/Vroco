.class public final synthetic Lcom/miui/home/recents/ThreeGestureSplitController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

.field public final synthetic f$1:Lcom/miui/home/recents/util/ClipAnimationHelper;

.field public final synthetic f$2:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/ThreeGestureSplitController$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    iput-object p2, p0, Lcom/miui/home/recents/ThreeGestureSplitController$$ExternalSyntheticLambda0;->f$1:Lcom/miui/home/recents/util/ClipAnimationHelper;

    iput-object p3, p0, Lcom/miui/home/recents/ThreeGestureSplitController$$ExternalSyntheticLambda0;->f$2:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    return-void
.end method


# virtual methods
.method public final onUpdate(Landroid/graphics/RectF;FFFLcom/miui/home/recents/anim/IValueCallBack;)V
    .locals 8

    iget-object v0, p0, Lcom/miui/home/recents/ThreeGestureSplitController$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    iget-object v1, p0, Lcom/miui/home/recents/ThreeGestureSplitController$$ExternalSyntheticLambda0;->f$1:Lcom/miui/home/recents/util/ClipAnimationHelper;

    iget-object v2, p0, Lcom/miui/home/recents/ThreeGestureSplitController$$ExternalSyntheticLambda0;->f$2:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Lcom/miui/home/recents/ThreeGestureSplitController;->$r8$lambda$3owj333sfsGobUwowwNKnbQdgNc(Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/RectF;FFFLcom/miui/home/recents/anim/IValueCallBack;)V

    return-void
.end method
