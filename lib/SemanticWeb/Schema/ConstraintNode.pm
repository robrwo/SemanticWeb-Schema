use utf8;

package SemanticWeb::Schema::ConstraintNode;

# ABSTRACT: The ConstraintNode type is provided to support usecases in which a node in a structured data graph is described with properties which appear to describe a single entity

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'ConstraintNode';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v23.0.0';

=encoding utf8

=head1 DESCRIPTION

The ConstraintNode type is provided to support usecases in which a node in a structured data graph is described with properties which appear to describe a single entity, but are being used in a situation where they serve a more abstract purpose. A L<SemanticWeb::Schema::ConstraintNode> can be described using [[constraintProperty]] and [[numConstraints]]. These constraint properties can serve a 
    variety of purposes, and their values may sometimes be understood to indicate sets of possible values rather than single, exact and specific values.



=head1 ATTRIBUTES


=head2 C<constraint_property>

C<constraintProperty>

Indicates a property used as a constraint. For example, in the definition of a L<SemanticWeb::Schema::StatisticalVariable>. The value is a property, either from within Schema.org or from other compatible (e.g. RDF) systems such as DataCommons.org or Wikidata.org. 

A constraint_property should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Property']>

=item C<Str>

=back

=head2 C<_has_constraint_property>

A predicate for the L</constraint_property> attribute.

=cut

has constraint_property => (
    is        => 'rw',
    predicate => '_has_constraint_property',
    json_ld   => 'constraintProperty',
);


=head2 C<num_constraints>

C<numConstraints>

Indicates the number of constraints property values defined for a particular L<SemanticWeb::Schema::ConstraintNode> such as L<SemanticWeb::Schema::StatisticalVariable>. This helps applications understand if they have access to a sufficiently complete description of a L<SemanticWeb::Schema::StatisticalVariable> or other construct that is defined using properties on template-style nodes.

A num_constraints should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=back

=head2 C<_has_num_constraints>

A predicate for the L</num_constraints> attribute.

=cut

has num_constraints => (
    is        => 'rw',
    predicate => '_has_num_constraints',
    json_ld   => 'numConstraints',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
