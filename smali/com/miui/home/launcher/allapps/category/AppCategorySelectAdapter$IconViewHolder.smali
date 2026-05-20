.class Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;
.super Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$ViewHolder;
.source "AppCategorySelectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IconViewHolder"
.end annotation


# instance fields
.field icon:Lcom/miui/home/launcher/ShortcutIcon;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 211
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 212
    check-cast p1, Lcom/miui/home/launcher/ShortcutIcon;

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;->icon:Lcom/miui/home/launcher/ShortcutIcon;

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 0

    .line 216
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;->icon:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->isChecked()Z

    move-result p0

    return p0
.end method

.method public setChecked(ZZ)V
    .locals 3

    .line 220
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;->icon:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/ShortcutIcon;->setChecked(Z)V

    .line 221
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;->icon:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    if-eqz p1, :cond_0

    const p1, 0x7f100138

    goto :goto_0

    :cond_0
    const p1, 0x7f100139

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 222
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;->icon:Lcom/miui/home/launcher/ShortcutIcon;

    .line 223
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, v1, v2

    .line 221
    invoke-virtual {v0, p1, v1}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
