use utf8;

package SemanticWeb::Schema::issn;

# ABSTRACT: The International Standard Serial Number (ISSN) that identifies this serial publication

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'issn';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The International Standard Serial Number (ISSN) that identifies this serial
publication. You can repeat this property to identify different formats of,
or the linking ISSN (ISSN-L) for, this serial publication.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
