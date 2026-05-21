.class public Lcom/miui/miuiwidget/servicedelivery/bean/AppSuggestEntity;
.super Ljava/lang/Object;
.source "AppSuggestEntity.java"


# instance fields
.field public appSuggest:Lcom/miui/miuiwidget/servicedelivery/bean/AppSuggest;

.field public localImgPathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/miuiwidget/servicedelivery/bean/AppSuggest;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/bean/AppSuggestEntity;->localImgPathList:Ljava/util/ArrayList;

    .line 9
    iput-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/bean/AppSuggestEntity;->appSuggest:Lcom/miui/miuiwidget/servicedelivery/bean/AppSuggest;

    return-void
.end method
