use utf8;

package SemanticWeb::Schema::StatisticalPopulation;

# ABSTRACT: A StatisticalPopulation is a set of instances of a certain given type that satisfy some set of constraints

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'StatisticalPopulation';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v4.0.2';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>A StatisticalPopulation is a set of instances of a certain given type
that satisfy some set of constraints. The property <a class="localLink"
href="http://schema.org/populationType">populationType</a> is used to
specify the type. Any property that can be used on instances of that type
can appear on the statistical population. For example, a <a
class="localLink"
href="http://schema.org/StatisticalPopulation">StatisticalPopulation</a>
representing all <a class="localLink"
href="http://schema.org/Person">Person</a>s with a <a class="localLink"
href="http://schema.org/homeLocation">homeLocation</a> of East Podunk
California, would be described by applying the appropriate <a
class="localLink" href="http://schema.org/homeLocation">homeLocation</a>
and <a class="localLink"
href="http://schema.org/populationType">populationType</a> properties to a
<a class="localLink"
href="http://schema.org/StatisticalPopulation">StatisticalPopulation</a>
item that stands for that set of people. The properties <a
class="localLink"
href="http://schema.org/numConstraints">numConstraints</a> and <a
class="localLink"
href="http://schema.org/constrainingProperties">constrainingProperties</a>
are used to specify which of the populations properties are used to specify
the population. Note that the sense of "population" used here is the
general sense of a statistical population, and does not imply that the
population consists of people. For example, a <a class="localLink"
href="http://schema.org/populationType">populationType</a> of <a
class="localLink" href="http://schema.org/Event">Event</a> or <a
class="localLink" href="http://schema.org/NewsArticle">NewsArticle</a>
could be used. See also <a class="localLink"
href="http://schema.org/Observation">Observation</a>, and the <a
href="/docs/data-and-datasets.html">data and datasets</a> overview for more
details.<p>

=end html




=head1 ATTRIBUTES


=head2 C<constraining_property>

C<constrainingProperty>

=begin html

<p>Indicates a property used as a constraint to define a <a
class="localLink"
href="http://schema.org/StatisticalPopulation">StatisticalPopulation</a>
with respect to the set of entities corresponding to an indicated type (via
<a class="localLink"
href="http://schema.org/populationType">populationType</a>).<p>

=end html


A constraining_property should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=back

=cut

has constraining_property => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'constrainingProperty',
);


=head2 C<num_constraints>

C<numConstraints>

=begin html

<p>Indicates the number of constraints (not counting <a class="localLink"
href="http://schema.org/populationType">populationType</a>) defined for a
particular <a class="localLink"
href="http://schema.org/StatisticalPopulation">StatisticalPopulation</a>.
This helps applications understand if they have access to a sufficiently
complete description of a <a class="localLink"
href="http://schema.org/StatisticalPopulation">StatisticalPopulation</a>.<p
>

=end html


A num_constraints should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=back

=cut

has num_constraints => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'numConstraints',
);


=head2 C<population_type>

C<populationType>

=begin html

<p>Indicates the populationType common to all members of a <a
class="localLink"
href="http://schema.org/StatisticalPopulation">StatisticalPopulation</a>.<p
>

=end html


A population_type should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Class']>

=back

=cut

has population_type => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'populationType',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
