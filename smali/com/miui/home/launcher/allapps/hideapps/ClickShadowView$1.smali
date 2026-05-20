.class Lcom/miui/home/launcher/allapps/hideapps/ClickShadowView$1;
.super Ljava/lang/Object;
.source "ClickShadowView.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/allapps/hideapps/ClickShadowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1

    const p0, 0x3d4ccccd    # 0.05f

    cmpg-float v0, p1, p0

    if-gez v0, :cond_0

    div-float/2addr p1, p0

    return p1

    :cond_0
    const p0, 0x3e99999a    # 0.3f

    cmpg-float p0, p1, p0

    const/high16 v0, 0x3f800000    # 1.0f

    if-gez p0, :cond_1

    return v0

    :cond_1
    sub-float/2addr v0, p1

    const p0, 0x3f333333    # 0.7f

    div-float/2addr v0, p0

    return v0
.end method
