use utf8;

package SemanticWeb::Schema::StatisticalPopulation;

# ABSTRACT: A StatisticalPopulation is a set of instances of a certain given type that satisfy some set of constraints

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'StatisticalPopulation';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.0.0';

=encoding utf8

=head1 DESCRIPTION

A StatisticalPopulation is a set of instances of a certain given type that
satisfy some set of constraints. The property [[populationType]] is used to
specify the type. Any property that can be used on instances of that type
can appear on the statistical population. For example, a
[[StatisticalPopulation]] representing all [[Person]]s with a
[[homeLocation]] of East Podunk California, would be described by applying
the appropriate [[homeLocation]] and [[populationType]] properties to a
[[StatisticalPopulation]] item that stands for that set of people. The
properties [[numConstraints]] and [[constrainingProperties]] are used to
specify which of the populations properties are used to specify the
population. Note that the sense of "population" used here is the general
sense of a statistical population, and does not imply that the population
consists of people. For example, a [[populationType]] of [[Event]] or
[[NewsArticle]] could be used. See also [[Observation]], and the [data and
datasets](/docs/data-and-datasets.html) overview for more details. 




=head1 ATTRIBUTES


=head2 C<constraining_property>

C<constrainingProperty>

Indicates a property used as a constraint to define a
[[StatisticalPopulation]] with respect to the set of entities corresponding
to an indicated type (via [[populationType]]).


A constraining_property should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=back

=head2 C<_has_constraining_property>

A predicate for the L</constraining_property> attribute.

=cut

has constraining_property => (
    is        => 'rw',
    predicate => '_has_constraining_property',
    json_ld   => 'constrainingProperty',
);


=head2 C<num_constraints>

C<numConstraints>

Indicates the number of constraints (not counting [[populationType]])
defined for a particular [[StatisticalPopulation]]. This helps applications
understand if they have access to a sufficiently complete description of a
[[StatisticalPopulation]].


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


=head2 C<population_type>

C<populationType>

Indicates the populationType common to all members of a
[[StatisticalPopulation]].


A population_type should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Class']>

=back

=head2 C<_has_population_type>

A predicate for the L</population_type> attribute.

=cut

has population_type => (
    is        => 'rw',
    predicate => '_has_population_type',
    json_ld   => 'populationType',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
