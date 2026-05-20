.class public Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;
.super Ljava/lang/Object;
.source "HideAppCommonDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field params:Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;-><init>(Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;->params:Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;

    .line 121
    iput-object p1, v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public create()Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;->params:Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog;->access$100(Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;)Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog;

    move-result-object p0

    return-object p0
.end method

.method public setContent(Ljava/lang/String;)Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;->params:Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;

    iput-object p1, v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;->content:Ljava/lang/String;

    return-object p0
.end method

.method public setContentText(I)Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;->params:Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;

    iput p1, v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;->contentRes:I

    return-object p0
.end method

.method public setCustomView(I)Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;->params:Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;

    iput p1, v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;->customView:I

    return-object p0
.end method

.method public setDisAmount(F)Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;->params:Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;

    iput p1, v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;->disAmount:F

    return-object p0
.end method

.method public setGravity(I)Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;->params:Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;

    iput p1, v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;->gravity:I

    return-object p0
.end method

.method public setNegativeButton(IILandroid/view/View$OnClickListener;)Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;->params:Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;

    iput p1, v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;->negativeButtonText:I

    .line 148
    iput-object p3, v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;->negativeButtonListener:Landroid/view/View$OnClickListener;

    .line 149
    iput p2, v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;->negativeButtonTextColor:I

    return-object p0
.end method

.method public setNegativeButton(ILandroid/view/View$OnClickListener;)Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;
    .locals 1

    const/4 v0, -0x1

    .line 142
    invoke-virtual {p0, p1, v0, p2}, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;->setNegativeButton(IILandroid/view/View$OnClickListener;)Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;

    return-object p0
.end method

.method public setPositiveButton(IILandroid/view/View$OnClickListener;)Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;->params:Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;

    iput p2, v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;->positiveButtonTextColor:I

    .line 136
    iput p1, v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;->positiveButtonText:I

    .line 137
    iput-object p3, v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;->positiveButtonListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public setPositiveButton(ILandroid/view/View$OnClickListener;)Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;
    .locals 1

    const/4 v0, -0x1

    .line 130
    invoke-virtual {p0, p1, v0, p2}, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;->setPositiveButton(IILandroid/view/View$OnClickListener;)Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;

    return-object p0
.end method

.method public setTitle(I)Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$Builder;->params:Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;

    iput p1, v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppCommonDialog$CommonDialogParam;->title:I

    return-object p0
.end method
