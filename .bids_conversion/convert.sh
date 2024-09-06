#!/bin/bash

set -e -u

# get list of dirs once
for subdir in [0-9]*; do

    newsub="sub-${subdir}"
    mkdir -p ${newsub}/ses-3T/anat \
             ${newsub}/ses-3T/func \
             ${newsub}/ses-7T/func

    # rename anat files
    git mv -fk ${subdir}/T1w/T1w_acpc_dc.nii.gz ${newsub}/ses-3T/anat/${newsub}_ses-3T_desc-dc_T1w.nii.gz || true
    git mv -fk ${subdir}/T1w/T1w_acpc_dc_restore.nii.gz ${newsub}/ses-3T/anat/${newsub}_ses-3T_desc-dcrestore_T1w.nii.gz || true
    git mv -fk ${subdir}/T1w/T1wDividedByT2w.nii.gz ${newsub}/ses-3T/anat/${newsub}_ses-3T_T1wT2wratio.nii.gz || true
    git mv -fk ${subdir}/T1w/T2w_acpc_dc.nii.gz ${newsub}/ses-3T/anat/${newsub}_ses-3T_desc-dc_T2w.nii.gz || true
    git mv -fk ${subdir}/T1w/T2w_acpc_dc_restore.nii.gz ${newsub}/ses-3T/anat/${newsub}_ses-3T_desc-dcrestore_T2w.nii.gz || true

    # rename func files
    #
    # 3T rest1 LR
    #
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST1_LR/Movement_AbsoluteRMS_mean.txt ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-LR_run-1_desc-MovementAbsoluteRMSmean.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST1_LR/Movement_AbsoluteRMS.txt ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-LR_run-1_desc-MovementAbsoluteRMS.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST1_LR/Movement_Regressors_dt.txt ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-LR_run-1_desc-MovementRegressorsdt.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST1_LR/Movement_Regressors.txt ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-LR_run-1_desc-MovementRegressors.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST1_LR/Movement_RelativeRMS_mean.txt ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-LR_run-1_desc-MovementRelativeRMSmean.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST1_LR/Movement_RelativeRMS.txt ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-LR_run-1_desc-MovementRelativeRMS.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST1_LR/ReclassifyAsNoise.txt ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-LR_run-1_desc-ReclassifyAsNoise.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST1_LR/ReclassifyAsSignal.txt ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir_LR_run-1_desc-ReclassifyAsSignal.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST1_LR/rfMRI_REST1_LR_Atlas_hp2000_clean.dtseries.nii ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-LR_run-1_desc-Atlashp2000clean.dtseries.nii || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST1_LR/rfMRI_REST1_LR_Atlas_MSMAll_hp2000_clean.dtseries.nii ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-LR_run-1_desc-AtlasMSMALLhp2000clean.dtseries.nii || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST1_LR/rfMRI_REST1_LR_Atlas_stats.txt ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-LR_run-1_desc-Atlasstats.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST1_LR/rfMRI_REST1_LR_CSF.txt ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-LR_run-1_desc-CSF.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST1_LR/rfMRI_REST1_LR_hp2000_clean.nii.gz ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-LR_run-1_desc-hp2000clean.nii.gz || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST1_LR/rfMRI_REST1_LR_Physio_log.txt ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-LR_run-1_physio.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST1_LR/rfMRI_REST1_LR_WM.txt ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-LR_run-1_desc-WM.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST1_LR/rfMRI_REST1_LR_Atlas_CleanedMGT.txt ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-LR_run-1_desc-CleanedMGT_atlas.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST1_LR/rfMRI_REST1_LR_Atlas_HighPassMGT.txt ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-LR_run-1_desc-HighPassMGT_atlas.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST1_LR/rfMRI_REST1_LR_Atlas_NoiseMGT.txt ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-LR_run-1_desc-NoiseMGT_atlas.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST1_LR/rfMRI_REST1_LR_Atlas_OrigMGT.txt ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-LR_run-1_desc-OrigMGT_atlas.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST1_LR/rfMRI_REST1_LR_Atlas_PostMotionMGT.txt ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-LR_run-1_desc-PostMotionMGT_atlas.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST1_LR/rfMRI_REST1_LR_Atlas_UnstructNoiseMGT.txt ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-LR_run-1_desc-UnstructNoiseMGT_atlas.txt || true
    #
    # 3T rest1 RL
    #
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST1_RL/Movement_AbsoluteRMS_mean.txt ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-RL_run-1_desc-MovementAbsoluteRMSmean.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST1_RL/Movement_AbsoluteRMS.txt ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-RL_run-1_desc-MovementAbsoluteRMS.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST1_RL/Movement_Regressors_dt.txt ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-RL_run-1_desc-MovementRegressorsdt.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST1_RL/Movement_Regressors.txt ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-RL_run-1_desc-MovementRegressors.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST1_RL/Movement_RelativeRMS_mean.txt ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-RL_run-1_desc-MovementRelativeRMSmean.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST1_RL/Movement_RelativeRMS.txt ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-RL_run-1_desc-MovementRelativeRMS.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST1_RL/ReclassifyAsNoise.txt ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-RL_run-1_desc-ReclassifyAsNoise.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST1_RL/ReclassifyAsSignal.txt ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-RL_run-1_desc-ReclassifyAsSignal.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST1_RL/rfMRI_REST1_RL_Atlas_hp2000_clean.dtseries.nii ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-RL_run-1_desc-Atlashp2000clean.dtseries.nii || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST1_RL/rfMRI_REST1_RL_Atlas_MSMAll_hp2000_clean.dtseries.nii ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-RL_run-1_desc-AtlasMSMAllhp2000clean.dtseries.nii || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST1_RL/rfMRI_REST1_RL_Atlas_stats.txt ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-RL_run-1_desc-Atlasstats.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST1_RL/rfMRI_REST1_RL_CSF.txt ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-RL_run-1_desc-CSF.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST1_RL/rfMRI_REST1_RL_hp2000_clean.nii.gz ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-RL_run-1_desc-hp2000clean.nii.gz || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST1_RL/rfMRI_REST1_RL_Physio_log.txt ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-RL_run-1_physio.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST1_RL/rfMRI_REST1_RL_WM.txt ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-RL_run-1_desc-WM.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST1_RL/rfMRI_REST1_RL_Atlas_CleanedMGT.txt ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-RL_run-1_desc-CleanedMGT_atlas.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST1_RL/rfMRI_REST1_RL_Atlas_HighPassMGT.txt ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-RL_run-1_desc-HighPassMGT_atlas.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST1_RL/rfMRI_REST1_RL_Atlas_NoiseMGT.txt ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-RL_run-1_desc-NoiseMGT_atlas.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST1_RL/rfMRI_REST1_RL_Atlas_OrigMGT.txt ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-RL_run-1_desc-OrigMGT_atlas.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST1_RL/rfMRI_REST1_RL_Atlas_PostMotionMGT.txt ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-RL_run-1_desc-PostMotionMGT_atlas.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST1_RL/rfMRI_REST1_RL_Atlas_UnstructNoiseMGT.txt ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-RL_run-1_desc-UnstructNoiseMGT_atlas.txt || true
    #
    # 3T rest2 LR
    #
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST2_LR/Movement_AbsoluteRMS_mean.txt ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-LR_run-2_desc-MovementAbsoluteRMSmean.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST2_LR/Movement_AbsoluteRMS.txt ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-LR_run-2_desc-MovementAbsoluteRMS.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST2_LR/Movement_Regressors_dt.txt ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-LR_run-2_desc-MovementRegressorsdt.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST2_LR/Movement_Regressors.txt ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-LR_run-2_desc-MovementRegressors.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST2_LR/Movement_RelativeRMS_mean.txt ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-LR_run-2_desc-MovementRelativeRMSmean.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST2_LR/Movement_RelativeRMS.txt ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-LR_run-2_desc-MovementRelativeRMS.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST2_LR/ReclassifyAsNoise.txt ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-LR_run-2_desc-ReclassifyAsNoise.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST2_LR/ReclassifyAsSignal.txt ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-LR_run-2_desc-ReclassifyAsSignal.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST2_LR/rfMRI_REST2_LR_Atlas_hp2000_clean.dtseries.nii ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-LR_run-2_desc-Atlashp2000clean.dtseries.nii || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST2_LR/rfMRI_REST2_LR_Atlas_MSMAll_hp2000_clean.dtseries.nii ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-LR_run-2_desc-AtlasMSMAllhp2000clean.dtseries.nii || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST2_LR/rfMRI_REST2_LR_Atlas_stats.txt ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-LR_run-2_desc-Atlasstats.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST2_LR/rfMRI_REST2_LR_CSF.txt ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-LR_run-2_desc-CSF.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST2_LR/rfMRI_REST2_LR_hp2000_clean.nii.gz ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-LR_run-2_desc-hp2000clean.nii.gz || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST2_LR/rfMRI_REST2_LR_Physio_log.txt ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-LR_run-2_physio.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST2_LR/rfMRI_REST2_LR_WM.txt ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-LR_run-2_desc-WM.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST2_LR/rfMRI_REST2_LR_Atlas_CleanedMGT.txt ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-LR_run-2_desc-CleanedMGT_atlas.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST2_LR/rfMRI_REST2_LR_Atlas_HighPassMGT.txt ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-LR_run-2_desc-HighPassMGT_atlas.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST2_LR/rfMRI_REST2_LR_Atlas_NoiseMGT.txt ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-LR_run-2_desc-NoiseMGT_atlas.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST2_LR/rfMRI_REST2_LR_Atlas_OrigMGT.txt ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-LR_run-2_desc-OrigMGT_atlas.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST2_LR/rfMRI_REST2_LR_Atlas_PostMotionMGT.txt ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-LR_run-2_desc-PostMotionMGT_atlas.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST2_LR/rfMRI_REST2_LR_Atlas_UnstructNoiseMGT.txt ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-LR_run-2_desc-UnstructNoiseMGT_atlas.txt || true
    #
    # 3T rest2 RL
    #
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST2_RL/Movement_AbsoluteRMS_mean.txt ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-RL_run-2_desc-MovementAbsoluteRMSmean.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST2_RL/Movement_AbsoluteRMS.txt ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-RL_run-2_desc-MovementAbsoluteRMS.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST2_RL/Movement_Regressors_dt.txt ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-RL_run-2_desc-MovementRegressorsdt.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST2_RL/Movement_Regressors.txt ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-RL_run-2_desc-MovementRegressors.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST2_RL/Movement_RelativeRMS_mean.txt ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-RL_run-2_desc-MovementRelativeRMSmean.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST2_RL/Movement_RelativeRMS.txt ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-RL_run-2_desc-MovementRelativeRMS.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST2_RL/ReclassifyAsNoise.txt ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-RL_run-2_desc-ReclassifyAsNoise.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST2_RL/ReclassifyAsSignal.txt ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-RL_run-2_desc-ReclassifyAsSignal.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST2_RL/rfMRI_REST2_RL_Atlas_hp2000_clean.dtseries.nii ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-RL_run-2_desc-Atlashp2000clean.dtseries.nii || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST2_RL/rfMRI_REST2_RL_Atlas_MSMAll_hp2000_clean.dtseries.nii ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-RL_run-2_desc-AtlasMSMAllhp2000clean.dtseries.nii || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST2_RL/rfMRI_REST2_RL_Atlas_stats.txt ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-RL_run-2_desc-Atlasstats.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST2_RL/rfMRI_REST2_RL_CSF.txt ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-RL_run-2_desc-CSF.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST2_RL/rfMRI_REST2_RL_hp2000_clean.nii.gz ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-RL_run-2_desc-hp2000clean.nii.gz || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST2_RL/rfMRI_REST2_RL_Physio_log.txt ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-RL_run-2_physio.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST2_RL/rfMRI_REST2_RL_WM.txt ${newsub}/ses-3T/func/${newsub}_ses-3T_task-rest_dir-RL_run-2_desc-WM.txt || true
    #
    # 7T rest1 PA
    #
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST1_7T_PA/rfMRI_REST1_7T_PA_hp2000_clean.nii.gz ${newsub}/ses-7T/func/${newsub}_ses-7T_task-rest_dir-PA_run-1_desc-hp2000clean.nii.gz || true
    #
    # 7T rest2 AP
    #
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST2_7T_AP/Movement_AbsoluteRMS_mean.txt ${newsub}/ses-7T/func/${newsub}_ses-7T_task-rest_dir-AP_run-2_desc-MovementAbsoluteRMSmean.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST2_7T_AP/Movement_AbsoluteRMS.txt ${newsub}/ses-7T/func/${newsub}_ses-7T_task-rest_dir-AP_run-2_desc-MovementAbsoluteRMS.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST2_7T_AP/Movement_Regressors_dt.txt ${newsub}/ses-7T/func/${newsub}_ses-7T_task-rest_dir-AP_run-2_desc-MovementRegressorsdt.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST2_7T_AP/Movement_Regressors.txt ${newsub}/ses-7T/func/${newsub}_ses-7T_task-rest_dir-AP_run-2_desc-MovementRegressors.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST2_7T_AP/Movement_RelativeRMS_mean.txt ${newsub}/ses-7T/func/${newsub}_ses-7T_task-rest_dir-AP_run-2_desc-MovementRelativeRMSmean.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST2_7T_AP/Movement_RelativeRMS.txt ${newsub}/ses-7T/func/${newsub}_ses-7T_task-rest_dir-AP_run-2_desc-MovementRelativeRMS.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST2_7T_AP/ReclassifyAsNoise.txt ${newsub}/ses-7T/func/${newsub}_ses-7T_task-rest_dir-AP_run-2_desc-ReclassifyAsNoise.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST2_7T_AP/ReclassifyAsSignal.txt ${newsub}/ses-7T/func/${newsub}_ses-7T_task-rest_dir-AP_run-2_desc-ReclassifyAsSignal.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST2_7T_AP/rfMRI_REST2_7T_AP_Atlas_hp2000_clean.dtseries.nii ${newsub}/ses-7T/func/${newsub}_ses-7T_task-rest_dir-AP_run-2_desc-Atlashp2000clean.dtseries.nii || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST2_7T_AP/rfMRI_REST2_7T_AP_Atlas_MSMAll_hp2000_clean.dtseries.nii ${newsub}/ses-7T/func/${newsub}_ses-7T_task-rest_dir-AP_run-2_desc-AtlasMSMAllhp2000clean.dtseries.nii || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST2_7T_AP/rfMRI_REST2_7T_AP_Atlas_stats.txt ${newsub}/ses-7T/func/${newsub}_ses-7T_task-rest_dir-AP_run-2_desc-Atlasstats.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST2_7T_AP/rfMRI_REST2_7T_AP_CSF.txt ${newsub}/ses-7T/func/${newsub}_ses-7T_task-rest_dir-AP_run-2_desc-CSF.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST2_7T_AP/rfMRI_REST2_7T_AP_hp2000_clean.nii.gz ${newsub}/ses-7T/func/${newsub}_ses-7T_task-rest_dir-AP_run-2_desc-hp2000clean.nii.gz || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST2_7T_AP/rfMRI_REST2_7T_AP_WM.txt ${newsub}/ses-7T/func/${newsub}_ses-7T_task-rest_dir-AP_run-2_desc-WM.txt || true
    #
    # 7T rest3 PA
    #
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST3_7T_PA/Movement_AbsoluteRMS_mean.txt ${newsub}/ses-7T/func/${newsub}_ses-7T_task-rest_dir-PA_run-3_desc-MovementAbsoluteRMSmean.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST3_7T_PA/Movement_AbsoluteRMS.txt ${newsub}/ses-7T/func/${newsub}_ses-7T_task-rest_dir-PA_run-3_desc-MovementAbsoluteRMS.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST3_7T_PA/Movement_Regressors_dt.txt ${newsub}/ses-7T/func/${newsub}_ses-7T_task-rest_dir-PA_run-3_desc-MovementRegressorsdt.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST3_7T_PA/Movement_Regressors.txt ${newsub}/ses-7T/func/${newsub}_ses-7T_task-rest_dir-PA_run-3_desc-MovementRegressors.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST3_7T_PA/Movement_RelativeRMS_mean.txt ${newsub}/ses-7T/func/${newsub}_ses-7T_task-rest_dir-PA_run-3_desc-MovementRelativeRMSmean.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST3_7T_PA/Movement_RelativeRMS.txt ${newsub}/ses-7T/func/${newsub}_ses-7T_task-rest_dir-PA_run-3_desc-MovementRelativeRMS.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST3_7T_PA/ReclassifyAsNoise.txt ${newsub}/ses-7T/func/${newsub}_ses-7T_task-rest_dir-PA_run-3_desc-ReclassifyAsNoise.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST3_7T_PA/ReclassifyAsSignal.txt ${newsub}/ses-7T/func/${newsub}_ses-7T_task-rest_dir-PA_run-3_desc-ReclassifyAsSignal.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST3_7T_PA/rfMRI_REST3_7T_PA_Atlas_hp2000_clean.dtseries.nii ${newsub}/ses-7T/func/${newsub}_ses-7T_task-rest_dir-PA_run-3_desc-Atlashp2000clean.dtseries.nii || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST3_7T_PA/rfMRI_REST3_7T_PA_Atlas_MSMAll_hp2000_clean.dtseries.nii ${newsub}/ses-7T/func/${newsub}_ses-7T_task-rest_dir-PA_run-3_desc-AtlasMSMAllhp2000clean.dtseries.nii || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST3_7T_PA/rfMRI_REST3_7T_PA_Atlas_stats.txt ${newsub}/ses-7T/func/${newsub}_ses-7T_task-rest_dir-PA_run-3_desc-Atlasstats.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST3_7T_PA/rfMRI_REST3_7T_PA_CSF.txt ${newsub}/ses-7T/func/${newsub}_ses-7T_task-rest_dir-PA_run-3_desc-CSF.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST3_7T_PA/rfMRI_REST3_7T_PA_hp2000_clean.nii.gz ${newsub}/ses-7T/func/${newsub}_ses-7T_task-rest_dir-PA_run-3_desc-hp2000clean.nii.gz || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST3_7T_PA/rfMRI_REST3_7T_PA_WM.txt ${newsub}/ses-7T/func/${newsub}_ses-7T_task-rest_dir-PA_run-3_desc-WM.txt || true
    #
    # 7T rest4 AP
    #
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST4_7T_AP/Movement_AbsoluteRMS_mean.txt ${newsub}/ses-7T/func/${newsub}_ses-7T_task-rest_dir-AP_run-4_desc-MovementAbsoluteRMSmean.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST4_7T_AP/Movement_AbsoluteRMS.txt ${newsub}/ses-7T/func/${newsub}_ses-7T_task-rest_dir-AP_run-4_desc-MovementAbsoluteRMS.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST4_7T_AP/Movement_Regressors_dt.txt ${newsub}/ses-7T/func/${newsub}_ses-7T_task-rest_dir-AP_run-4_desc-MovementRegressorsdt.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST4_7T_AP/Movement_Regressors.txt ${newsub}/ses-7T/func/${newsub}_ses-7T_task-rest_dir-AP_run-4_desc-MovementRegressors.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST4_7T_AP/Movement_RelativeRMS_mean.txt ${newsub}/ses-7T/func/${newsub}_ses-7T_task-rest_dir-AP_run-4_desc-MovementRelativeRMSmean.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST4_7T_AP/Movement_RelativeRMS.txt ${newsub}/ses-7T/func/${newsub}_ses-7T_task-rest_dir-AP_run-4_desc-MovementRelativeRMS.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST4_7T_AP/ReclassifyAsNoise.txt ${newsub}/ses-7T/func/${newsub}_ses-7T_task-rest_dir-AP_run-4_desc-ReclassifyAsNoise.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST4_7T_AP/ReclassifyAsSignal.txt ${newsub}/ses-7T/func/${newsub}_ses-7T_task-rest_dir-AP_run-4_desc-ReclassifyAsSignal.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST4_7T_AP/rfMRI_REST4_7T_AP_Atlas_hp2000_clean.dtseries.nii ${newsub}/ses-7T/func/${newsub}_ses-7T_task-rest_dir-AP_run-4_desc-Atlashp2000clean.dtseries.nii || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST4_7T_AP/rfMRI_REST4_7T_AP_Atlas_MSMAll_hp2000_clean.dtseries.nii ${newsub}/ses-7T/func/${newsub}_ses-7T_task-rest_dir-AP_run-4_desc-AtlasMSMAllhp2000clean.dtseries.nii || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST4_7T_AP/rfMRI_REST4_7T_AP_Atlas_stats.txt ${newsub}/ses-7T/func/${newsub}_ses-7T_task-rest_dir-AP_run-4_desc-Atlasstats.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST4_7T_AP/rfMRI_REST4_7T_AP_CSF.txt ${newsub}/ses-7T/func/${newsub}_ses-7T_task-rest_dir-AP_run-4_desc-CSF.txt || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST4_7T_AP/rfMRI_REST4_7T_AP_hp2000_clean.nii.gz ${newsub}/ses-7T/func/${newsub}_ses-7T_task-rest_dir-AP_run-4_desc-hp2000clean.nii.gz || true
    git mv -fk ${subdir}/MNINonLinear/Results/rfMRI_REST4_7T_AP/rfMRI_REST4_7T_AP_WM.txt ${newsub}/ses-7T/func/${newsub}_ses-7T_task-rest_dir-AP_run-4_desc-WM.txt || true
    # get rid of the old dir
    git rm -r ${subdir} &> /dev/null || rm -rf ${subdir}
done

# let git-annex ensure all file pointers are proper
git annex fsck -q

# create dataset_description.json, if there is none
[ -f dataset_description.json ] && exit 0

cat >> dataset_description.json << EOT
{
    "Name": "HCP Functional Connectivity",
    "BIDSVersion": "1.3.0-dev (BEP003)",
    "PipelineDescription": {
        "Name": "HCP Pipeliens - PreFreeSurfer and fMRIVolume",
        "Version": "",
        },
    "SourceDatasets": [
        {
            "DOI": "",
            "URL": "https://github.com/datalad-datasets/human-connectome-project-openaccess",
            "Version": ""
        }
    ]
}
EOT
