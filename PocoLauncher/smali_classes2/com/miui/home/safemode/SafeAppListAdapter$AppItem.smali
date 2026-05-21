.class public Lcom/miui/home/safemode/SafeAppListAdapter$AppItem;
.super Ljava/lang/Object;
.source "SafeAppListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/safemode/SafeAppListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppItem"
.end annotation


# instance fields
.field mComponentName:Landroid/content/ComponentName;

.field mIcon:Landroid/graphics/drawable/Drawable;

.field mName:Ljava/lang/String;

.field mPkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/ComponentName;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p2, p0, Lcom/miui/home/safemode/SafeAppListAdapter$AppItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 85
    iput-object p1, p0, Lcom/miui/home/safemode/SafeAppListAdapter$AppItem;->mName:Ljava/lang/String;

    .line 86
    iput-object p3, p0, Lcom/miui/home/safemode/SafeAppListAdapter$AppItem;->mPkgName:Ljava/lang/String;

    .line 87
    iput-object p4, p0, Lcom/miui/home/safemode/SafeAppListAdapter$AppItem;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method
