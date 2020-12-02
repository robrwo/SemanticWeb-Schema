use utf8;

package SemanticWeb::Schema::Motel;

# ABSTRACT: A motel

use Moo;

extends qw/ SemanticWeb::Schema::LodgingBusiness /;


use MooX::JSON_LD 'Motel';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.0.1';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>A motel. <br /><br /> See also the <a href="/docs/hotels.html">dedicated
document on the use of schema.org for marking up hotels and other forms of
accommodations</a>. <p>

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::LodgingBusiness>

=cut

1;
