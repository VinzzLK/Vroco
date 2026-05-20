.class Lcom/miui/home/launcher/SearchBarXiaoaiLayout$1;
.super Lcom/miui/home/launcher/common/AsyncTaskRunnable;
.source "SearchBarXiaoaiLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/SearchBarXiaoaiLayout;->refreshStyle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/home/launcher/common/AsyncTaskRunnable<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/SearchBarXiaoaiLayout;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/SearchBarXiaoaiLayout;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/miui/home/launcher/SearchBarXiaoaiLayout$1;->this$0:Lcom/miui/home/launcher/SearchBarXiaoaiLayout;

    invoke-direct {p0}, Lcom/miui/home/launcher/common/AsyncTaskRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method protected doInBackground()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 96
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isSupportSuperXiaoai()Z

    move-result v0

    .line 97
    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarXiaoaiLayout$1;->this$0:Lcom/miui/home/launcher/SearchBarXiaoaiLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v0, :cond_0

    const v2, 0x7f0802db

    goto :goto_0

    :cond_0
    const v2, 0x7f0802df

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 98
    iget-object v2, p0, Lcom/miui/home/launcher/SearchBarXiaoaiLayout$1;->this$0:Lcom/miui/home/launcher/SearchBarXiaoaiLayout;

    instance-of v3, v1, Landroid/graphics/drawable/LayerDrawable;

    xor-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/miui/home/launcher/SearchBarXiaoaiLayout;->access$002(Lcom/miui/home/launcher/SearchBarXiaoaiLayout;Z)Z

    .line 99
    iget-object v2, p0, Lcom/miui/home/launcher/SearchBarXiaoaiLayout$1;->this$0:Lcom/miui/home/launcher/SearchBarXiaoaiLayout;

    invoke-static {v2}, Lcom/miui/home/launcher/SearchBarXiaoaiLayout;->access$000(Lcom/miui/home/launcher/SearchBarXiaoaiLayout;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drawableXiaoai="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SearchBarStyleUtil"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-static {}, Lcom/miui/home/launcher/SearchBarStyleData;->getInstance()Lcom/miui/home/launcher/SearchBarStyleData;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/SearchBarXiaoaiLayout$1;->this$0:Lcom/miui/home/launcher/SearchBarXiaoaiLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/SearchBarStyleData;->getRightIconDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 102
    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarXiaoaiLayout$1;->this$0:Lcom/miui/home/launcher/SearchBarXiaoaiLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0806bd

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    move-object v1, p0

    goto :goto_1

    :cond_2
    move-object v1, v2

    :cond_3
    :goto_1
    return-object v1
.end method

.method protected bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 0

    .line 92
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarXiaoaiLayout$1;->doInBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarXiaoaiLayout$1;->this$0:Lcom/miui/home/launcher/SearchBarXiaoaiLayout;

    invoke-static {p0}, Lcom/miui/home/launcher/SearchBarXiaoaiLayout;->access$100(Lcom/miui/home/launcher/SearchBarXiaoaiLayout;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 92
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/SearchBarXiaoaiLayout$1;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
