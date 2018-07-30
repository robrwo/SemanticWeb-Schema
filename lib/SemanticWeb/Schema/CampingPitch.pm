package SemanticWeb::Schema::CampingPitch;

# ABSTRACT: A camping pitch is an individual place for overnight stay in the outdoors

use Moo;

extends qw/ SemanticWeb::Schema::Accommodation /;


use MooX::JSON_LD 'CampingPitch';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.2';

=head1 DESCRIPTION

=begin html

A camping pitch is an individual place for overnight stay in the outdoors,
typically being part of a larger camping site. <br /><br /> See also the <a
href="/docs/hotels.html">dedicated document on the use of schema.org for
marking up hotels and other forms of accommodations</a>.

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Accommodation>

=cut

1;
