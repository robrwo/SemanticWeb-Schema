use utf8;

package SemanticWeb::Schema::Car;

# ABSTRACT: A car is a wheeled

use Moo;

extends qw/ SemanticWeb::Schema::Vehicle /;


use MooX::JSON_LD 'Car';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v7.0.4';

=encoding utf8

=head1 DESCRIPTION

A car is a wheeled, self-powered motor vehicle used for transportation.




=head1 ATTRIBUTES


=head2 C<acriss_code>

C<acrissCode>

The ACRISS Car Classification Code is a code used by many car rental
companies, for classifying vehicles. ACRISS stands for Association of Car
Rental Industry Systems and Standards.


A acriss_code should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_acriss_code>

A predicate for the L</acriss_code> attribute.

=cut

has acriss_code => (
    is        => 'rw',
    predicate => '_has_acriss_code',
    json_ld   => 'acrissCode',
);


=head2 C<roof_load>

C<roofLoad>

=begin html

<p>The permitted total weight of cargo and installations (e.g. a roof rack)
on top of the vehicle.<br/><br/> Typical unit code(s): KGM for kilogram,
LBR for pound<br/><br/> <ul> <li>Note 1: You can indicate additional
information in the <a class="localLink"
href="http://schema.org/name">name</a> of the <a class="localLink"
href="http://schema.org/QuantitativeValue">QuantitativeValue</a> node.</li>
<li>Note 2: You may also link to a <a class="localLink"
href="http://schema.org/QualitativeValue">QualitativeValue</a> node that
provides additional information using <a class="localLink"
href="http://schema.org/valueReference">valueReference</a></li> <li>Note 3:
Note that you can use <a class="localLink"
href="http://schema.org/minValue">minValue</a> and <a class="localLink"
href="http://schema.org/maxValue">maxValue</a> to indicate ranges.</li>
</ul> <p>

=end html


A roof_load should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=head2 C<_has_roof_load>

A predicate for the L</roof_load> attribute.

=cut

has roof_load => (
    is        => 'rw',
    predicate => '_has_roof_load',
    json_ld   => 'roofLoad',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Vehicle>

=cut

1;
