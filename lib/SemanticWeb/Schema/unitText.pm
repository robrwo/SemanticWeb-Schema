use utf8;

package SemanticWeb::Schema::unitText;

# ABSTRACT: A string or text indicating the unit of measurement

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'unitText';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>A string or text indicating the unit of measurement. Useful if you
cannot provide a standard unit code for <a
href='unitCode'>unitCode</a>.</p>

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
