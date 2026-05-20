.class public Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "HideAppsGuideDrawable.java"


# instance fields
.field private mInsidePaint:Landroid/graphics/Paint;

.field private mOutsidePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideDrawable;->mInsidePaint:Landroid/graphics/Paint;

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideDrawable;->mOutsidePaint:Landroid/graphics/Paint;

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0600f8

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 34
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideDrawable;->mOutsidePaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 35
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideDrawable;->mOutsidePaint:Landroid/graphics/Paint;

    const/16 v1, 0x9b

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 36
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideDrawable;->mInsidePaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 37
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideDrawable;->mInsidePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 38
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideDrawable;->mInsidePaint:Landroid/graphics/Paint;

    const/16 p1, 0xff

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideDrawable;->mInsidePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 49
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 50
    div-int/lit8 v1, v0, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideDrawable;->mOutsidePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v1, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 51
    div-int/lit8 v0, v0, 0x5

    int-to-float v0, v0

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideDrawable;->mInsidePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v1, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public setAlpha(I)V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideDrawable;->mInsidePaint:Landroid/graphics/Paint;

    mul-int/lit16 v1, p1, 0xff

    div-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 58
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideDrawable;->mOutsidePaint:Landroid/graphics/Paint;

    mul-int/lit16 p1, p1, 0x9b

    div-int/lit16 p1, p1, 0xff

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 59
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
