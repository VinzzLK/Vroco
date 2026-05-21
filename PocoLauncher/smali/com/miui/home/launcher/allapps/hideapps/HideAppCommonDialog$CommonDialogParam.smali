.class Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;
.super Ljava/lang/Object;
.source "HideAppCommonDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CommonDialogParam"
.end annotation


# instance fields
.field public animation:I

.field closeAfterCheck:Z

.field content:Ljava/lang/String;

.field contentRes:I

.field public context:Landroid/content/Context;

.field customView:I

.field public disAmount:F

.field public gravity:I

.field negativeButtonListener:Landroid/view/View$OnClickListener;

.field negativeButtonText:I

.field negativeButtonTextColor:I

.field onShowListener:Landroid/content/DialogInterface$OnShowListener;

.field positiveButtonListener:Landroid/view/View$OnClickListener;

.field positiveButtonText:I

.field positiveButtonTextColor:I

.field public title:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x50

    .line 298
    iput v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;->gravity:I

    const/4 v0, -0x1

    .line 299
    iput v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;->positiveButtonText:I

    .line 302
    iput v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;->negativeButtonText:I

    .line 306
    iput v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;->positiveButtonTextColor:I

    .line 309
    iput v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;->negativeButtonTextColor:I

    .line 312
    iput v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;->title:I

    .line 317
    iput v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;->customView:I

    const/4 v0, 0x0

    .line 325
    iput-boolean v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;->closeAfterCheck:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$1;)V
    .locals 0

    .line 295
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;-><init>()V

    return-void
.end method


# virtual methods
.method public hasAnimation()Z
    .locals 1

    .line 340
    iget p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;->animation:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method hasNegativeButton()Z
    .locals 1

    .line 332
    iget p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;->negativeButtonText:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method hasPositiveButton()Z
    .locals 1

    .line 328
    iget p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;->positiveButtonText:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCustomView()Z
    .locals 1

    .line 336
    iget p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;->customView:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
