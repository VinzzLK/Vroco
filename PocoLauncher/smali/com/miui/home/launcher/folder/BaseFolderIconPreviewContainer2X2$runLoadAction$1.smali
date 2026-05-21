.class public final Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$1;
.super Ljava/lang/Object;
.source "BaseFolderIconPreviewContainer2X2.kt"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->runLoadAction(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/IconCache;ZLcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Function<",
        "Lcom/miui/home/launcher/ShortcutInfo;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $currentIndex:I

.field final synthetic $iconCache:Lcom/miui/home/launcher/IconCache;

.field final synthetic $isToggle:Z

.field final synthetic $si:Lcom/miui/home/launcher/ShortcutInfo;

.field final synthetic this$0:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/IconCache;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$1;->this$0:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    iput-object p2, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$1;->$si:Lcom/miui/home/launcher/ShortcutInfo;

    iput-object p3, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$1;->$iconCache:Lcom/miui/home/launcher/IconCache;

    iput-boolean p4, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$1;->$isToggle:Z

    iput p5, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$1;->$currentIndex:I

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/miui/home/launcher/ShortcutInfo;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 223
    iget-object p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$1;->this$0:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    invoke-virtual {p1}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMPvChildList()Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$1;->$currentIndex:I

    iget-object v1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$1;->this$0:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    monitor-enter p1

    .line 224
    :try_start_0
    invoke-virtual {v1}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMRealPvChildCount()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    if-lt v0, v2, :cond_0

    .line 225
    monitor-exit p1

    return-object v3

    .line 227
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMPvChildList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 228
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    monitor-exit p1

    .line 229
    iget-object p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$1;->$si:Lcom/miui/home/launcher/ShortcutInfo;

    .line 230
    iget-object v1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$1;->this$0:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$1;->$iconCache:Lcom/miui/home/launcher/IconCache;

    .line 231
    iget-boolean v4, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$1;->$isToggle:Z

    if-eqz v4, :cond_1

    move-object v0, v3

    goto :goto_0

    :cond_1
    check-cast v0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 229
    :goto_0
    invoke-virtual {p1, v1, v2, v0}, Lcom/miui/home/launcher/ShortcutInfo;->getIconDrawable(Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v3

    :cond_2
    const-string v0, "PreviewDisappear"

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2X2 got icon for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$1;->$si:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " drawable: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/miui/home/launcher/util/TempLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :catchall_0
    move-exception p0

    .line 223
    monitor-exit p1

    throw p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 219
    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$runLoadAction$1;->apply(Lcom/miui/home/launcher/ShortcutInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method
