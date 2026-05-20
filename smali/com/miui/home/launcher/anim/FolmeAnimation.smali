.class public Lcom/miui/home/launcher/anim/FolmeAnimation;
.super Ljava/lang/Object;
.source "FolmeAnimation.java"


# instance fields
.field private final animConfig:Lmiuix/animation/base/AnimConfig;

.field private final animSpecialConfig:Lmiuix/animation/base/AnimSpecialConfig;

.field private final animState:Lmiuix/animation/controller/AnimState;

.field private mFolme:Lmiuix/animation/IFolme;

.field private mIconView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p2, p0, Lcom/miui/home/launcher/anim/FolmeAnimation;->animState:Lmiuix/animation/controller/AnimState;

    .line 20
    iput-object p3, p0, Lcom/miui/home/launcher/anim/FolmeAnimation;->animConfig:Lmiuix/animation/base/AnimConfig;

    .line 21
    iput-object p4, p0, Lcom/miui/home/launcher/anim/FolmeAnimation;->animSpecialConfig:Lmiuix/animation/base/AnimSpecialConfig;

    .line 22
    iput-object p1, p0, Lcom/miui/home/launcher/anim/FolmeAnimation;->mIconView:Landroid/view/View;

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/view/View;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    .line 23
    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/anim/FolmeAnimation;->mFolme:Lmiuix/animation/IFolme;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/miui/home/launcher/anim/FolmeAnimation;->mFolme:Lmiuix/animation/IFolme;

    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/ICancelableStyle;->cancel()V

    return-void
.end method

.method public getAnimConfig()Lmiuix/animation/base/AnimConfig;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/miui/home/launcher/anim/FolmeAnimation;->animConfig:Lmiuix/animation/base/AnimConfig;

    return-object p0
.end method

.method public getCurrentIcon()Landroid/view/View;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/miui/home/launcher/anim/FolmeAnimation;->mIconView:Landroid/view/View;

    return-object p0
.end method

.method public skipToEndDuringAnim()V
    .locals 1

    .line 43
    iget-object p0, p0, Lcom/miui/home/launcher/anim/FolmeAnimation;->mFolme:Lmiuix/animation/IFolme;

    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lmiuix/animation/ICancelableStyle;->end([Ljava/lang/Object;)V

    return-void
.end method

.method public skipToEndStateImmediately()V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/miui/home/launcher/anim/FolmeAnimation;->mFolme:Lmiuix/animation/IFolme;

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/anim/FolmeAnimation;->animState:Lmiuix/animation/controller/AnimState;

    invoke-interface {v0, p0}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method public start()V
    .locals 5

    .line 39
    iget-object v0, p0, Lcom/miui/home/launcher/anim/FolmeAnimation;->mFolme:Lmiuix/animation/IFolme;

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/anim/FolmeAnimation;->animState:Lmiuix/animation/controller/AnimState;

    const/4 v2, 0x1

    new-array v2, v2, [Lmiuix/animation/base/AnimConfig;

    iget-object v3, p0, Lcom/miui/home/launcher/anim/FolmeAnimation;->animConfig:Lmiuix/animation/base/AnimConfig;

    sget-object v4, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    iget-object p0, p0, Lcom/miui/home/launcher/anim/FolmeAnimation;->animSpecialConfig:Lmiuix/animation/base/AnimSpecialConfig;

    invoke-virtual {v3, v4, p0}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void
.end method
