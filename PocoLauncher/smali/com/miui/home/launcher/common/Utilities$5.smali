.class Lcom/miui/home/launcher/common/Utilities$5;
.super Ljava/lang/Object;
.source "Utilities.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/common/Utilities;->changeToFancyDrawable(Lcom/miui/home/launcher/ShortcutIcon;Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$fancyDrawable:Landroid/graphics/drawable/Drawable;

.field final synthetic val$icon:Lcom/miui/home/launcher/ShortcutIcon;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 0

    .line 3139
    iput-object p1, p0, Lcom/miui/home/launcher/common/Utilities$5;->val$fancyDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/miui/home/launcher/common/Utilities$5;->val$icon:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 3142
    iget-object v0, p0, Lcom/miui/home/launcher/common/Utilities$5;->val$fancyDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 3143
    iget-object p0, p0, Lcom/miui/home/launcher/common/Utilities$5;->val$icon:Lcom/miui/home/launcher/ShortcutIcon;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/ShortcutIcon;->setIconDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
