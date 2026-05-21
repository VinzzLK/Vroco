.class Lcom/miui/home/launcher/folder/FolderSheet$1;
.super Ljava/lang/Object;
.source "FolderSheet.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    .line 276
    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderSheet$1;->this$0:Lcom/miui/home/launcher/folder/FolderSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 289
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderSheet$1;->this$0:Lcom/miui/home/launcher/folder/FolderSheet;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/folder/FolderSheet;->access$000(Lcom/miui/home/launcher/folder/FolderSheet;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
