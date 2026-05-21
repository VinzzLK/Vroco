.class Lcom/miui/home/launcher/folder/FolderSheet$2;
.super Ljava/lang/Object;
.source "FolderSheet.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/folder/FolderSheet;->setTextView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/folder/FolderSheet;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/folder/FolderSheet;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderSheet$2;->this$0:Lcom/miui/home/launcher/folder/FolderSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-nez p2, :cond_1

    if-nez p2, :cond_0

    .line 296
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderSheet$2;->this$0:Lcom/miui/home/launcher/folder/FolderSheet;

    invoke-static {p1}, Lcom/miui/home/launcher/folder/FolderSheet;->access$100(Lcom/miui/home/launcher/folder/FolderSheet;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 299
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderSheet$2;->this$0:Lcom/miui/home/launcher/folder/FolderSheet;

    invoke-static {p1}, Lcom/miui/home/launcher/folder/FolderSheet;->access$100(Lcom/miui/home/launcher/folder/FolderSheet;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderSheet$2;->this$0:Lcom/miui/home/launcher/folder/FolderSheet;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/miui/home/launcher/folder/FolderSheet;->access$300(Lcom/miui/home/launcher/folder/FolderSheet;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 297
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderSheet$2;->this$0:Lcom/miui/home/launcher/folder/FolderSheet;

    invoke-static {p1}, Lcom/miui/home/launcher/folder/FolderSheet;->access$100(Lcom/miui/home/launcher/folder/FolderSheet;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderSheet$2;->this$0:Lcom/miui/home/launcher/folder/FolderSheet;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/miui/home/launcher/folder/FolderSheet;->access$200(Lcom/miui/home/launcher/folder/FolderSheet;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method
