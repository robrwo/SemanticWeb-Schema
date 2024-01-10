use utf8;

package SemanticWeb::Schema::keywords;

# ABSTRACT: Keywords or tags used to describe some item

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'keywords';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Keywords or tags used to describe some item. Multiple textual entries in a
keywords list are typically delimited by commas, or by repeating the
property.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
