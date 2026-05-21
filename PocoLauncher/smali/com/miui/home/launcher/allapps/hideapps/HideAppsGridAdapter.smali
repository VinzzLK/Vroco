.class public Lcom/miui/home/launcher/allapps/hideapps/HideAppsGridAdapter;
.super Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;
.source "HideAppsGridAdapter.java"


# instance fields
.field private defaultCheckBoxShow:Z


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;Lcom/miui/home/launcher/allapps/AllAppsColorMode;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;Lcom/miui/home/launcher/allapps/AllAppsColorMode;I)V

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsGridAdapter;->defaultCheckBoxShow:Z

    return-void
.end method


# virtual methods
.method public isDefaultCheckBoxShow()Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsGridAdapter;->defaultCheckBoxShow:Z

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 17
    check-cast p1, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsGridAdapter;->onBindViewHolder(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;I)V
    .locals 2

    .line 52
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->onBindViewHolder(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;I)V

    .line 53
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 54
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->getItem(I)Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    move-result-object p0

    .line 55
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->appInfo:Lcom/miui/home/launcher/AppInfo;

    .line 56
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lcom/miui/home/launcher/ShortcutIcon;

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p1, p2, v0}, Lcom/miui/home/launcher/ShortcutIcon;->setEditMode(ZZ)V

    .line 58
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->isChecked()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/ShortcutIcon;->checkCheckBox(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsGridAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;
    .locals 1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsGridAdapter;->isDefaultCheckBoxShow()Z

    move-result v0

    if-eqz v0, :cond_0

    const p2, 0x7f0d002f

    .line 36
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p2, v0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->createShortcutIcon(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    .line 37
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 39
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mIconFocusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 40
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p2}, Lcom/miui/home/library/mirror/MirrorManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/mirror/MirrorManagerCompat;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/miui/home/library/mirror/MirrorManagerCompat;->setMirrorMenuListener(Landroid/view/View;)V

    .line 41
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p2}, Lcom/miui/home/library/mirror/MirrorManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/mirror/MirrorManagerCompat;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/miui/home/library/mirror/MirrorManagerCompat;->setDragListener(Landroid/view/View;)V

    .line 43
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mCellHeight:I

    iput p0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 p0, 0x1

    .line 44
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/ShortcutIcon;->showOrHideCheckBoxWithAnim(Z)V

    .line 45
    new-instance p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p0

    .line 47
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public setDefaultCheckBoxShow(Z)V
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsGridAdapter;->defaultCheckBoxShow:Z

    return-void
.end method
