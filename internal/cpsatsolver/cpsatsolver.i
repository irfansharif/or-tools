// Copyright 2010-2018 Google LLC
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by appliable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// This .i file exposes the CP-SAT model API. It was adapted from
// ortools/sat/{python,java,csharp}/sat.i.

%include "stdint.i"

%include "ortools/base/base.i"
%include "internal/cpsatsolver/proto.i"

%{
#include "ortools/sat/cp_model.pb.h"
#include "ortools/sat/sat_parameters.pb.h"
#include "ortools/sat/swig_helper.h"
#include "ortools/util/sorted_interval_list.h"
%}

%go_import("github.com/irfansharif/or-tools/internal/cpsatsolver/pb")

%module(directors="1") operations_research_sat

PROTO_INPUT(operations_research::sat::CpModelProto,
            pb.CpModelProto,
            model_proto);

PROTO_INPUT(operations_research::sat::SatParameters,
            pb.SatParameters,
            parameters);

PROTO_INPUT(operations_research::sat::IntegerVariableProto,
            pb.IntegerVariableProto,
            variable_proto);

PROTO_INPUT(operations_research::sat::CpSolverResponse,
            pb.CpSolverResponse,
            response);

PROTO2_RETURN(operations_research::sat::CpSolverResponse,
              pb.CpSolverResponse);

%ignoreall

%unignore operations_research;
%unignore operations_research::sat;
%unignore operations_research::sat::SatHelper;
%unignore operations_research::sat::SatHelper::Solve;
%unignore operations_research::sat::SatHelper::SolveWithParameters;
%unignore operations_research::sat::SatHelper::SolveWithParametersAndSolutionCallback;
%unignore operations_research::sat::SatHelper::ModelStats;
%unignore operations_research::sat::SatHelper::SolverResponseStats;
%unignore operations_research::sat::SatHelper::ValidateModel;
%unignore operations_research::sat::SatHelper::VariableDomain;

%feature("director") operations_research::sat::SolutionCallback;
%unignore operations_research::sat::SolutionCallback;
%unignore operations_research::sat::SolutionCallback::~SolutionCallback;
%unignore operations_research::sat::SolutionCallback::BestObjectiveBound;
%feature("nodirector") operations_research::sat::SolutionCallback::BestObjectiveBound;
%unignore operations_research::sat::SolutionCallback::HasResponse;
%feature("nodirector") operations_research::sat::SolutionCallback::HasResponse;
%unignore operations_research::sat::SolutionCallback::NumBinaryPropagations;
%feature("nodirector") operations_research::sat::SolutionCallback::NumBinaryPropagations;
%unignore operations_research::sat::SolutionCallback::NumBooleans;
%feature("nodirector") operations_research::sat::SolutionCallback::NumBooleans;
%unignore operations_research::sat::SolutionCallback::NumBranches;
%feature("nodirector") operations_research::sat::SolutionCallback::NumBranches;
%unignore operations_research::sat::SolutionCallback::NumConflicts;
%feature("nodirector") operations_research::sat::SolutionCallback::NumConflicts;
%unignore operations_research::sat::SolutionCallback::NumIntegerPropagations;
%feature("nodirector") operations_research::sat::SolutionCallback::NumIntegerPropagations;
%unignore operations_research::sat::SolutionCallback::ObjectiveValue;
%feature("nodirector") operations_research::sat::SolutionCallback::ObjectiveValue;
%unignore operations_research::sat::SolutionCallback::OnSolutionCallback;
%unignore operations_research::sat::SolutionCallback::Response;
%feature("nodirector") operations_research::sat::SolutionCallback::Response;
%unignore operations_research::sat::SolutionCallback::SolutionBooleanValue;
%feature("nodirector") operations_research::sat::SolutionCallback::SolutionBooleanValue;
%unignore operations_research::sat::SolutionCallback::SolutionIntegerValue;
%feature("nodirector") operations_research::sat::SolutionCallback::SolutionIntegerValue;
%unignore operations_research::sat::SolutionCallback::StopSearch;
%feature("nodirector") operations_research::sat::SolutionCallback::StopSearch;
%unignore operations_research::sat::SolutionCallback::UserTime;
%feature("nodirector") operations_research::sat::SolutionCallback::UserTime;
%unignore operations_research::sat::SolutionCallback::WallTime;
%feature("nodirector") operations_research::sat::SolutionCallback::WallTime;

%include "ortools/sat/swig_helper.h"

%unignoreall
