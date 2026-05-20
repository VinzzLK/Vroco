.class public final synthetic Lcom/miui/home/launcher/DragView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/DragView$$ExternalSyntheticLambda2;->f$0:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/DragView$$ExternalSyntheticLambda2;->f$0:Ljava/util/function/Consumer;

    invoke-static {p0, p1, p2, p3}, Lcom/miui/home/launcher/DragView;->$r8$lambda$PTMCODhQLKXqxGeg5SDmjAlAwKU(Ljava/util/function/Consumer;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method
