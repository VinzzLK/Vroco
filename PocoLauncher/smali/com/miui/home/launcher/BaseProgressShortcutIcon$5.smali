.class Lcom/miui/home/launcher/BaseProgressShortcutIcon$5;
.super Ljava/lang/Object;
.source "BaseProgressShortcutIcon.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/BaseProgressShortcutIcon;->OnToggleChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/BaseProgressShortcutIcon;

.field final synthetic val$bgDrawable:Landroid/graphics/drawable/BitmapDrawable;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/BaseProgressShortcutIcon;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon$5;->this$0:Lcom/miui/home/launcher/BaseProgressShortcutIcon;

    iput-object p2, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon$5;->val$bgDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon$5;->this$0:Lcom/miui/home/launcher/BaseProgressShortcutIcon;

    iget-object p0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon$5;->val$bgDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->setIconImageView(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 329
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/BaseProgressShortcutIcon$5;->accept(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
