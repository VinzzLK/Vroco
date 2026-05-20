.class Lcom/miui/home/launcher/widget/WidgetCell$1;
.super Ljava/lang/Object;
.source "WidgetCell.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/widget/WidgetCell;->lambda$applyFromCellItem$1(Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;Lcom/miui/home/launcher/ItemInfo;Landroid/graphics/Matrix;Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/widget/WidgetCell;

.field final synthetic val$queryResult:Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/widget/WidgetCell;Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/miui/home/launcher/widget/WidgetCell$1;->this$0:Lcom/miui/home/launcher/widget/WidgetCell;

    iput-object p2, p0, Lcom/miui/home/launcher/widget/WidgetCell$1;->val$queryResult:Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 136
    iget-object p1, p0, Lcom/miui/home/launcher/widget/WidgetCell$1;->this$0:Lcom/miui/home/launcher/widget/WidgetCell;

    invoke-static {p1}, Lcom/miui/home/launcher/widget/WidgetCell;->access$000(Lcom/miui/home/launcher/widget/WidgetCell;)Landroid/widget/RemoteViews;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 137
    iget-object p1, p0, Lcom/miui/home/launcher/widget/WidgetCell$1;->this$0:Lcom/miui/home/launcher/widget/WidgetCell;

    iget-object v0, p1, Lcom/miui/home/launcher/widget/WidgetCell;->mClickCallBack:Lcom/miui/home/launcher/widget/WidgetDetailsCallback;

    iget-object v1, p0, Lcom/miui/home/launcher/widget/WidgetCell$1;->val$queryResult:Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;

    iget-object v1, v1, Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;->mDescription:Ljava/lang/String;

    iget-object p1, p1, Lcom/miui/home/launcher/widget/WidgetCell;->mItemTitle:Landroid/widget/TextView;

    .line 139
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/miui/home/launcher/widget/WidgetCell$1;->this$0:Lcom/miui/home/launcher/widget/WidgetCell;

    iget-object v2, v2, Lcom/miui/home/launcher/widget/WidgetCell;->mLauncherWidgetHostView:Lcom/miui/launcher/views/LauncherWidgetHostView;

    iget-object p0, p0, Lcom/miui/home/launcher/widget/WidgetCell$1;->val$queryResult:Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;

    iget-object p0, p0, Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;->mPreview:Landroid/graphics/drawable/Drawable;

    .line 137
    invoke-interface {v0, v1, p1, v2, p0}, Lcom/miui/home/launcher/widget/WidgetDetailsCallback;->onJumpClick(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 144
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/widget/WidgetCell$1;->this$0:Lcom/miui/home/launcher/widget/WidgetCell;

    iget-object v0, p1, Lcom/miui/home/launcher/widget/WidgetCell;->mClickCallBack:Lcom/miui/home/launcher/widget/WidgetDetailsCallback;

    iget-object v1, p0, Lcom/miui/home/launcher/widget/WidgetCell$1;->val$queryResult:Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;

    iget-object v1, v1, Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;->mDescription:Ljava/lang/String;

    iget-object p1, p1, Lcom/miui/home/launcher/widget/WidgetCell;->mItemTitle:Landroid/widget/TextView;

    .line 146
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/home/launcher/widget/WidgetCell$1;->val$queryResult:Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;

    iget-object v2, p0, Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;->mDetailsPreview:Landroid/view/View;

    iget-object p0, p0, Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;->mPreview:Landroid/graphics/drawable/Drawable;

    .line 144
    invoke-interface {v0, v1, p1, v2, p0}, Lcom/miui/home/launcher/widget/WidgetDetailsCallback;->onJumpClick(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method
