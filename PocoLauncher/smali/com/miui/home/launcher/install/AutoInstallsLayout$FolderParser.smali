.class Lcom/miui/home/launcher/install/AutoInstallsLayout$FolderParser;
.super Ljava/lang/Object;
.source "AutoInstallsLayout.java"

# interfaces
.implements Lcom/miui/home/launcher/install/AutoInstallsLayout$TagParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/install/AutoInstallsLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FolderParser"
.end annotation


# instance fields
.field private final mFolderElements:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/miui/home/launcher/install/AutoInstallsLayout$TagParser;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/miui/home/launcher/install/AutoInstallsLayout;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/install/AutoInstallsLayout;)V
    .locals 1

    .line 624
    invoke-static {p1}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$800(Lcom/miui/home/launcher/install/AutoInstallsLayout;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/install/AutoInstallsLayout$FolderParser;-><init>(Lcom/miui/home/launcher/install/AutoInstallsLayout;Landroid/util/ArrayMap;)V

    return-void
.end method

.method constructor <init>(Lcom/miui/home/launcher/install/AutoInstallsLayout;Landroid/util/ArrayMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/miui/home/launcher/install/AutoInstallsLayout$TagParser;",
            ">;)V"
        }
    .end annotation

    .line 627
    iput-object p1, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout$FolderParser;->this$0:Lcom/miui/home/launcher/install/AutoInstallsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 628
    iput-object p2, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout$FolderParser;->mFolderElements:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public parseAndAdd(Landroid/content/res/XmlResourceParser;Landroid/content/ContentValues;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "folderItems"

    const/4 v1, 0x0

    .line 633
    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$500(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    iget-object p1, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout$FolderParser;->this$0:Lcom/miui/home/launcher/install/AutoInstallsLayout;

    invoke-static {p1}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$600(Lcom/miui/home/launcher/install/AutoInstallsLayout;)Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    const-string v0, "folder"

    .line 636
    invoke-static {p1, v0}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$900(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)V

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout$FolderParser;->this$0:Lcom/miui/home/launcher/install/AutoInstallsLayout;

    invoke-static {v0}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$600(Lcom/miui/home/launcher/install/AutoInstallsLayout;)Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout$FolderParser;->this$0:Lcom/miui/home/launcher/install/AutoInstallsLayout;

    iget-object v2, v2, Lcom/miui/home/launcher/install/AutoInstallsLayout;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, v2}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$1000(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Russia"

    .line 641
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "com.vroco.launcher:string/russia_preinstall_folder_name"

    goto :goto_0

    :cond_1
    move-object v2, v0

    .line 645
    :goto_0
    sget-boolean v3, Lcom/miui/home/launcher/DeviceConfig;->IS_KDDI_BUILD:Z

    if-nez v3, :cond_2

    const-string v3, "com.vroco.launcher:string/default_folder_title_tools"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v2, "com.vroco.launcher:string/new_default_folder_title_tools"

    .line 649
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->getFavoritesItemNewId()J

    move-result-wide v3

    const-string v5, "russia_preinstall_folder_name"

    .line 650
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 651
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    const-string v5, "russiaFolderDefaultId"

    invoke-virtual {v0, v5, v3, v4}, Lcom/miui/home/launcher/common/BaseSharePreference;->putLong(Ljava/lang/String;J)V

    :cond_3
    const-string/jumbo v0, "title"

    .line 654
    invoke-virtual {p2, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    invoke-static {p1, v0}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "label"

    invoke-virtual {p2, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 656
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "itemType"

    invoke-virtual {p2, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v2, 0x1

    .line 657
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v6, "spanX"

    invoke-virtual {p2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 658
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v6, "spanY"

    invoke-virtual {p2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 659
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "_id"

    invoke-virtual {p2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 660
    iget-object v5, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout$FolderParser;->this$0:Lcom/miui/home/launcher/install/AutoInstallsLayout;

    invoke-static {v5}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$400(Lcom/miui/home/launcher/install/AutoInstallsLayout;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 662
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    const-string v6, "profileId"

    .line 663
    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 665
    :goto_1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result p2

    const/4 v9, 0x3

    if-ne p2, v9, :cond_5

    .line 666
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    if-le v9, v5, :cond_4

    goto :goto_2

    :cond_4
    return v2

    :cond_5
    :goto_2
    if-eq p2, v0, :cond_6

    goto :goto_1

    .line 670
    :cond_6
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 671
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {p2, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 672
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-string v10, "container"

    invoke-virtual {p2, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    add-int/lit8 v9, v1, 0x1

    .line 673
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v10, "cellX"

    invoke-virtual {p2, v10, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 675
    iget-object v1, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout$FolderParser;->mFolderElements:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/install/AutoInstallsLayout$TagParser;

    if-eqz v1, :cond_7

    .line 677
    invoke-interface {v1, p1, p2, p3}, Lcom/miui/home/launcher/install/AutoInstallsLayout$TagParser;->parseAndAdd(Landroid/content/res/XmlResourceParser;Landroid/content/ContentValues;Landroid/database/sqlite/SQLiteDatabase;)Z

    move v1, v9

    goto :goto_1

    .line 679
    :cond_7
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid folder item "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
