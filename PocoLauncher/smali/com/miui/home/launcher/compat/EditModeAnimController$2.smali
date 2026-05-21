.class Lcom/miui/home/launcher/compat/EditModeAnimController$2;
.super Ljava/lang/Object;
.source "EditModeAnimController.java"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/compat/EditModeAnimController;->showEditModeAnimation(Landroid/view/View;ZFFFFZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/miui/home/launcher/compat/EditModeAnimController$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/miui/home/launcher/compat/EditModeAnimController$2;->val$view:Landroid/view/View;

    const p1, 0x7f0a0170

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method
