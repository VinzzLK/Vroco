.class Lcom/miui/home/launcher/FolderIcon$CategoryUpdateListener;
.super Ljava/lang/Object;
.source "FolderIcon.java"

# interfaces
.implements Lcom/miui/home/launcher/common/AppCategoryManager$OnCategoryLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/FolderIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CategoryUpdateListener"
.end annotation


# instance fields
.field private final mFolderInfoRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/home/launcher/FolderInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/FolderInfo;)V
    .locals 1

    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 518
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/home/launcher/FolderIcon$CategoryUpdateListener;->mFolderInfoRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onAppCategoryNameLoaded(Ljava/lang/String;)V
    .locals 1

    .line 523
    iget-object p0, p0, Lcom/miui/home/launcher/FolderIcon$CategoryUpdateListener;->mFolderInfoRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/FolderInfo;

    if-eqz p0, :cond_1

    .line 524
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->isUserChangeFolderNameStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 528
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/FolderInfo;->setTitle(Ljava/lang/CharSequence;Landroid/content/Context;)V

    .line 529
    iget-object p0, p0, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/Folder$FolderCallback;

    if-eqz p0, :cond_1

    instance-of p1, p0, Lcom/miui/home/launcher/FolderIcon;

    if-eqz p1, :cond_1

    .line 530
    check-cast p0, Lcom/miui/home/launcher/FolderIcon;

    .line 531
    iget-object p1, p0, Lcom/miui/home/launcher/ItemIcon;->mTitleView:Lcom/miui/home/launcher/TitleTextView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 532
    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mTitleView:Lcom/miui/home/launcher/TitleTextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method
