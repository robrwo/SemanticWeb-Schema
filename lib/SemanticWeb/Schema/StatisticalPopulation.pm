use utf8;

package SemanticWeb::Schema::StatisticalPopulation;

# ABSTRACT: A StatisticalPopulation is a set of instances of a certain given type that satisfy some set of constraints

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'StatisticalPopulation';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v22.0.1';

=encoding utf8

=head1 DESCRIPTION

A StatisticalPopulation is a set of instances of a certain given type that satisfy some set of constraints. The property [[populationType]] is used to specify the type. Any property that can be used on instances of that type can appear on the statistical population. For example, a L<SemanticWeb::Schema::StatisticalPopulation> representing all L<SemanticWeb::Schema::Person>s with a [[homeLocation]] of East Podunk California would be described by applying the appropriate [[homeLocation]] and [[populationType]] properties to a L<SemanticWeb::Schema::StatisticalPopulation> item that stands for that set of people.
The properties [[numConstraints]] and [[constraintProperty]] are used to specify which of the populations properties are used to specify the population. Note that the sense of "population" used here is the general sense of a statistical
population, and does not imply that the population consists of people. For example, a [[populationType]] of L<SemanticWeb::Schema::Event> or L<SemanticWeb::Schema::NewsArticle> could be used. See also L<SemanticWeb::Schema::Observation>, where a [[populationType]] such as L<SemanticWeb::Schema::Person> or L<SemanticWeb::Schema::Event> can be indicated directly. In most cases it may be better to use L<SemanticWeb::Schema::StatisticalVariable> instead of L<SemanticWeb::Schema::StatisticalPopulation>.



=head1 ATTRIBUTES


=head2 C<population_type>

C<populationType>

Indicates the populationType common to all members of a L<SemanticWeb::Schema::StatisticalPopulation> or all cases within the scope of a L<SemanticWeb::Schema::StatisticalVariable>.

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
