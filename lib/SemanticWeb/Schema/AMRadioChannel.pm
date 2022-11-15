use utf8;

package SemanticWeb::Schema::AMRadioChannel;

# ABSTRACT: A radio channel that uses AM.

use Moo;

extends qw/ SemanticWeb::Schema::RadioChannel /;


use MooX::JSON_LD 'AMRadioChannel';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v15.0.1';

=encoding utf8

=head1 DESCRIPTION

A radio channel that uses AM.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::RadioChannel>

=cut

1;
