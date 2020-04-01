use utf8;

package SemanticWeb::Schema::Hotel;

# ABSTRACT: A hotel is an establishment that provides lodging paid on a short-term basis (Source: Wikipedia

use Moo;

extends qw/ SemanticWeb::Schema::LodgingBusiness /;


use MooX::JSON_LD 'Hotel';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v7.0.3';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>A hotel is an establishment that provides lodging paid on a short-term
basis (Source: Wikipedia, the free encyclopedia, see
http://en.wikipedia.org/wiki/Hotel). <br /><br /> See also the <a
href="/docs/hotels.html">dedicated document on the use of schema.org for
marking up hotels and other forms of accommodations</a>.<p>

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::LodgingBusiness>

=cut

1;
