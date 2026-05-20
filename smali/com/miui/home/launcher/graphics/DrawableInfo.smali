.class public Lcom/miui/home/launcher/graphics/DrawableInfo;
.super Ljava/lang/Object;
.source "DrawableInfo.java"


# instance fields
.field public enableIconMask:I

.field public icon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 15
    iput v0, p0, Lcom/miui/home/launcher/graphics/DrawableInfo;->enableIconMask:I

    return-void
.end method

.method public static fromDrawable(Landroid/graphics/drawable/Drawable;)Lcom/miui/home/launcher/graphics/DrawableInfo;
    .locals 1

    .line 39
    new-instance v0, Lcom/miui/home/launcher/graphics/DrawableInfo;

    invoke-direct {v0}, Lcom/miui/home/launcher/graphics/DrawableInfo;-><init>()V

    .line 40
    iput-object p0, v0, Lcom/miui/home/launcher/graphics/DrawableInfo;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public static fromDrawableInfo(Landroid/graphics/drawable/Drawable;I)Lcom/miui/home/launcher/graphics/DrawableInfo;
    .locals 3

    .line 45
    new-instance v0, Lcom/miui/home/launcher/graphics/DrawableInfo;

    invoke-direct {v0}, Lcom/miui/home/launcher/graphics/DrawableInfo;-><init>()V

    if-nez p0, :cond_0

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set, fromDrawable for info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", with drawable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PreviewDisappear"

    invoke-static {v2, v1}, Lcom/miui/home/launcher/util/TempLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_0
    iput-object p0, v0, Lcom/miui/home/launcher/graphics/DrawableInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 50
    iput p1, v0, Lcom/miui/home/launcher/graphics/DrawableInfo;->enableIconMask:I

    return-object v0
.end method


# virtual methods
.method public applyTo(Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;)V
    .locals 2

    .line 18
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/DrawableInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DrawableInfo for info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " applyTo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/graphics/DrawableInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreviewDisappear"

    invoke-static {v1, v0}, Lcom/miui/home/launcher/util/TempLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/DrawableInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 22
    iget v0, p0, Lcom/miui/home/launcher/graphics/DrawableInfo;->enableIconMask:I

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->setEnableIconMask(I)V

    .line 23
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/DrawableInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/miui/launcher/utils/MamlUtils;->isMamlDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25
    iget-object p0, p0, Lcom/miui/home/launcher/graphics/DrawableInfo;->icon:Landroid/graphics/drawable/Drawable;

    const-string v0, "hideApplicationMessage"

    invoke-static {p0, v0}, Lcom/miui/launcher/utils/MamlUtils;->getRawAttr(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 26
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->setHideApplicationMessage(Z)V

    :cond_1
    return-void
.end method

.method public applyTo(Lcom/miui/home/launcher/graphics/DrawableInfo;)V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/DrawableInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set, applyTo for info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", with icon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/graphics/DrawableInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreviewDisappear"

    invoke-static {v1, v0}, Lcom/miui/home/launcher/util/TempLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/DrawableInfo;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p1, Lcom/miui/home/launcher/graphics/DrawableInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 35
    iget p0, p0, Lcom/miui/home/launcher/graphics/DrawableInfo;->enableIconMask:I

    iput p0, p1, Lcom/miui/home/launcher/graphics/DrawableInfo;->enableIconMask:I

    return-void
.end method
