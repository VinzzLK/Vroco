.class Lcom/miui/home/launcher/FolderGridView$ItemProperties;
.super Ljava/lang/Object;
.source "FolderGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/FolderGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ItemProperties"
.end annotation


# instance fields
.field private mIndex:Ljava/lang/Integer;

.field private mIsVisible:Z

.field private mRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/graphics/Rect;ZLjava/lang/Integer;)V
    .locals 0

    .line 967
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 968
    iput-object p1, p0, Lcom/miui/home/launcher/FolderGridView$ItemProperties;->mRect:Landroid/graphics/Rect;

    .line 969
    iput-boolean p2, p0, Lcom/miui/home/launcher/FolderGridView$ItemProperties;->mIsVisible:Z

    .line 970
    iput-object p3, p0, Lcom/miui/home/launcher/FolderGridView$ItemProperties;->mIndex:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getIndex()Ljava/lang/Integer;
    .locals 0

    .line 981
    iget-object p0, p0, Lcom/miui/home/launcher/FolderGridView$ItemProperties;->mIndex:Ljava/lang/Integer;

    return-object p0
.end method

.method public getRect()Landroid/graphics/Rect;
    .locals 0

    .line 973
    iget-object p0, p0, Lcom/miui/home/launcher/FolderGridView$ItemProperties;->mRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public isVisible()Z
    .locals 0

    .line 977
    iget-boolean p0, p0, Lcom/miui/home/launcher/FolderGridView$ItemProperties;->mIsVisible:Z

    return p0
.end method
